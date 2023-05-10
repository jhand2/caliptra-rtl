//----------------------------------------------------------------------
// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//----------------------------------------------------------------------

class soc_ifc_reg_cbs_intr_block_rf_ext_error_internal_intr_r_base extends uvm_reg_cbs;

    `uvm_object_utils(soc_ifc_reg_cbs_intr_block_rf_ext_error_internal_intr_r_base)

    string AHB_map_name = "soc_ifc_AHB_map";
    string APB_map_name = "soc_ifc_APB_map";

    // Function: post_predict
    //
    // Called by the <uvm_reg_field::predict()> method
    // after a successful UVM_PREDICT_READ or UVM_PREDICT_WRITE prediction.
    //
    // ~previous~ is the previous value in the mirror and
    // ~value~ is the latest predicted value. Any change to ~value~ will
    // modify the predicted mirror value.
    //
    virtual function void post_predict(input uvm_reg_field  fld,
                                       input uvm_reg_data_t previous,
                                       inout uvm_reg_data_t value,
                                       input uvm_predict_e  kind,
                                       input uvm_path_e     path,
                                       input uvm_reg_map    map);
        uvm_reg_block rm;
        uvm_reg       sts_reg;
        string event_name    ;
        uvm_reg       en_reg ;
        uvm_reg_field en_fld ;
        uvm_reg_field en_glb ;
        uvm_reg_field sts_glb;
        uvm_reg_field cnt_fld;

        sts_reg = fld.get_parent();
        rm = sts_reg.get_parent(); /* intr_block_rf_ext */
        // Get a base-name for the event by truncating the '_sts' suffix
        event_name = fld.get_name().substr(0,fld.get_name().len()-5);
        en_reg     = rm.get_reg_by_name("error_intr_en_r");
        en_fld     = en_reg.get_field_by_name({event_name, "_en"});
        en_glb     = rm.get_reg_by_name("global_intr_en_r").get_field_by_name("error_en");
        sts_glb    = rm.get_reg_by_name("error_global_intr_r").get_field_by_name("agg_sts");
        cnt_fld    = rm.get_reg_by_name({event_name, "_intr_count_r"}).get_field_by_name("cnt");

        if (map.get_name() == this.APB_map_name) begin
            if (kind == UVM_PREDICT_WRITE)
                `uvm_warning("SOC_IFC_REG_CBS", "Unexpected write to interrupt register through APB interface!")
            else
                `uvm_info("SOC_IFC_REG_CBS", "Unexpected read to interrupt register through APB interface!", UVM_LOW)
        end
        `uvm_info("SOC_IFC_REG_CBS", $sformatf("Access to %s with path %p", fld.get_full_name(), path), UVM_FULL)

        // Predict an increment to event interrupt counter
        // regardless of interrupt enablement (the sts reg being
        // set is all that is tracked by the interrupt counter)
        if (value & ~previous) begin
            `uvm_info("SOC_IFC_REG_CBS", $sformatf("Write to %s triggers increment on %s from %d to %d", fld.get_name(), cnt_fld.get_name(), cnt_fld.get_mirrored_value(), cnt_fld.get_mirrored_value() + uvm_reg_data_t'(1)), UVM_HIGH)
            cnt_fld.predict(cnt_fld.get_mirrored_value() + uvm_reg_data_t'(1));
        end

        // On rising edge of field value, check if the interrupt output pin will
        // transition to high.
        // Global interrupt pin "agg_sts" is non-sticky
        if ((value & ~previous) &&
            en_glb.get_mirrored_value() &&
            en_fld.get_mirrored_value() &&
            ~sts_glb.get_mirrored_value())
        begin
            `uvm_info("SOC_IFC_REG_CBS", {"Predicted update to ", fld.get_name(), " triggers interrupt output pin assertion"}, UVM_MEDIUM)
            sts_glb.predict(1'b1);
        end
        // On falling edge of field value, check if the interrupt output pin will
        // transition from high to low.
        // Global interrupt pin "agg_sts" is non-sticky
        else if ((~value & previous) &&
                 ~|(en_reg.get_mirrored_value() &
                    (sts_reg.get_mirrored_value() & ~(uvm_reg_data_t'(1) << fld.get_lsb_pos()))) &&
                 sts_glb.get_mirrored_value())
        begin
            `uvm_info("SOC_IFC_REG_CBS", {"Predicted update to ", fld.get_name(), " triggers interrupt output pin deassertion"}, UVM_MEDIUM)
            sts_glb.predict(1'b0);
        end
        else begin
            `uvm_info("SOC_IFC_REG_CBS",
                      $sformatf("Write to %s does not trigger interrupt output transition due to %s: [%x], %s: [%x], masked %s: [%x], and %s: [%x]",
                                fld.get_name(),
                                en_glb.get_name(),
                                en_glb.get_mirrored_value(),
                                en_fld.get_name(),
                                en_fld.get_mirrored_value(),
                                sts_reg.get_name(),
                                sts_reg.get_mirrored_value() & ~(uvm_reg_data_t'(1) << fld.get_lsb_pos()),
                                sts_glb.get_name(),
                                sts_glb.get_mirrored_value()),
                      UVM_HIGH)
        end
    endfunction

endclass
