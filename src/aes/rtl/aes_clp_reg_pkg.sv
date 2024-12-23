// Generated by PeakRDL-regblock - A free and open-source SystemVerilog generator
//  https://github.com/SystemRDL/PeakRDL-regblock

package aes_clp_reg_pkg;

    localparam AES_CLP_REG_DATA_WIDTH = 32;
    localparam AES_CLP_REG_MIN_ADDR_WIDTH = 12;

    typedef struct packed{
        logic [31:0] next;
    } aes_clp_reg__AES_NAME__NAME__in_t;

    typedef struct packed{
        aes_clp_reg__AES_NAME__NAME__in_t NAME;
    } aes_clp_reg__AES_NAME__in_t;

    typedef struct packed{
        logic [31:0] next;
    } aes_clp_reg__AES_VERSION__VERSION__in_t;

    typedef struct packed{
        aes_clp_reg__AES_VERSION__VERSION__in_t VERSION;
    } aes_clp_reg__AES_VERSION__in_t;

    typedef struct packed{
        logic hwclr;
    } kv_read_ctrl_reg__read_en__in_t;

    typedef struct packed{
        kv_read_ctrl_reg__read_en__in_t read_en;
    } kv_read_ctrl_reg__in_t;

    typedef struct packed{
        logic next;
    } kv_status_reg__READY__in_t;

    typedef struct packed{
        logic hwclr;
        logic hwset;
    } kv_status_reg__VALID__in_t;

    typedef struct packed{
        logic [7:0] next;
    } kv_status_reg__ERROR__in_t;

    typedef struct packed{
        kv_status_reg__READY__in_t READY;
        kv_status_reg__VALID__in_t VALID;
        kv_status_reg__ERROR__in_t ERROR;
    } kv_status_reg__in_t;

    typedef struct packed{
        logic hwset;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error0_sts_enable_528ccada_next_b1018582_resetsignal_939e99d4__in_t;

    typedef struct packed{
        logic hwset;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error1_sts_enable_938cafef_next_f460eb81_resetsignal_939e99d4__in_t;

    typedef struct packed{
        logic hwset;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error2_sts_enable_0dacf7a6_next_4b5b9e74_resetsignal_939e99d4__in_t;

    typedef struct packed{
        logic hwset;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error3_sts_enable_fc3af94b_next_c3125d40_resetsignal_939e99d4__in_t;

    typedef struct packed{
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error0_sts_enable_528ccada_next_b1018582_resetsignal_939e99d4__in_t error0_sts;
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error1_sts_enable_938cafef_next_f460eb81_resetsignal_939e99d4__in_t error1_sts;
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error2_sts_enable_0dacf7a6_next_4b5b9e74_resetsignal_939e99d4__in_t error2_sts;
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__error3_sts_enable_fc3af94b_next_c3125d40_resetsignal_939e99d4__in_t error3_sts;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__in_t;

    typedef struct packed{
        logic hwset;
    } aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__notif_cmd_done_sts_enable_dabe0b8b_next_540fa3b7__in_t;

    typedef struct packed{
        aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__notif_cmd_done_sts_enable_dabe0b8b_next_540fa3b7__in_t notif_cmd_done_sts;
    } aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__in_t;

    typedef struct packed{
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__in_t error_internal_intr_r;
        aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__in_t notif_internal_intr_r;
    } aes_clp_reg__intr_block_t__in_t;

    typedef struct packed{
        logic reset_b;
        logic error_reset_b;
        aes_clp_reg__AES_NAME__in_t [2-1:0]AES_NAME;
        aes_clp_reg__AES_VERSION__in_t [2-1:0]AES_VERSION;
        kv_read_ctrl_reg__in_t AES_KV_RD_KEY_CTRL;
        kv_status_reg__in_t AES_KV_RD_KEY_STATUS;
        aes_clp_reg__intr_block_t__in_t intr_block_rf;
    } aes_clp_reg__in_t;

    typedef struct packed{
        logic value;
    } kv_read_ctrl_reg__read_en__out_t;

    typedef struct packed{
        logic [4:0] value;
    } kv_read_ctrl_reg__read_entry__out_t;

    typedef struct packed{
        logic value;
    } kv_read_ctrl_reg__pcr_hash_extend__out_t;

    typedef struct packed{
        logic [24:0] value;
    } kv_read_ctrl_reg__rsvd__out_t;

    typedef struct packed{
        kv_read_ctrl_reg__read_en__out_t read_en;
        kv_read_ctrl_reg__read_entry__out_t read_entry;
        kv_read_ctrl_reg__pcr_hash_extend__out_t pcr_hash_extend;
        kv_read_ctrl_reg__rsvd__out_t rsvd;
    } kv_read_ctrl_reg__out_t;

    typedef struct packed{
        logic intr;
    } aes_clp_reg__global_intr_t_agg_sts_dd3dcf0a__out_t;

    typedef struct packed{
        logic intr;
    } aes_clp_reg__global_intr_t_agg_sts_e6399b4a__out_t;

    typedef struct packed{
        logic intr;
    } aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__out_t;

    typedef struct packed{
        logic intr;
    } aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__out_t;

    typedef struct packed{
        aes_clp_reg__global_intr_t_agg_sts_dd3dcf0a__out_t error_global_intr_r;
        aes_clp_reg__global_intr_t_agg_sts_e6399b4a__out_t notif_global_intr_r;
        aes_clp_reg__error_intr_t_error0_sts_28545624_error1_sts_40e0d3e1_error2_sts_b1cf2205_error3_sts_74a35378__out_t error_internal_intr_r;
        aes_clp_reg__notif_intr_t_notif_cmd_done_sts_1c68637e__out_t notif_internal_intr_r;
    } aes_clp_reg__intr_block_t__out_t;

    typedef struct packed{
        kv_read_ctrl_reg__out_t AES_KV_RD_KEY_CTRL;
        aes_clp_reg__intr_block_t__out_t intr_block_rf;
    } aes_clp_reg__out_t;

    typedef enum logic [31:0] {
        kv_status_reg__ERROR__kv_error_e__SUCCESS = 'h0,
        kv_status_reg__ERROR__kv_error_e__KV_READ_FAIL = 'h1,
        kv_status_reg__ERROR__kv_error_e__KV_WRITE_FAIL = 'h2
    } kv_status_reg__ERROR__kv_error_e_e;

    localparam AES_CLP_REG_ADDR_WIDTH = 32'd12;

endpackage