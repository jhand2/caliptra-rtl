// Generated by PeakRDL-regblock - A free and open-source SystemVerilog generator
//  https://github.com/SystemRDL/PeakRDL-regblock

module dv_reg (
        input wire clk,
        input wire rst,

        input wire s_cpuif_req,
        input wire s_cpuif_req_is_wr,
        input wire [10:0] s_cpuif_addr,
        input wire [31:0] s_cpuif_wr_data,
        input wire [31:0] s_cpuif_wr_biten,
        output wire s_cpuif_req_stall_wr,
        output wire s_cpuif_req_stall_rd,
        output wire s_cpuif_rd_ack,
        output wire s_cpuif_rd_err,
        output wire [31:0] s_cpuif_rd_data,
        output wire s_cpuif_wr_ack,
        output wire s_cpuif_wr_err,

        input dv_reg_pkg::dv_reg__in_t hwif_in,
        output dv_reg_pkg::dv_reg__out_t hwif_out
    );

    //--------------------------------------------------------------------------
    // CPU Bus interface logic
    //--------------------------------------------------------------------------
    logic cpuif_req;
    logic cpuif_req_is_wr;
    logic [10:0] cpuif_addr;
    logic [31:0] cpuif_wr_data;
    logic [31:0] cpuif_wr_biten;
    logic cpuif_req_stall_wr;
    logic cpuif_req_stall_rd;

    logic cpuif_rd_ack;
    logic cpuif_rd_err;
    logic [31:0] cpuif_rd_data;

    logic cpuif_wr_ack;
    logic cpuif_wr_err;

    assign cpuif_req = s_cpuif_req;
    assign cpuif_req_is_wr = s_cpuif_req_is_wr;
    assign cpuif_addr = s_cpuif_addr;
    assign cpuif_wr_data = s_cpuif_wr_data;
    assign cpuif_wr_biten = s_cpuif_wr_biten;
    assign s_cpuif_req_stall_wr = cpuif_req_stall_wr;
    assign s_cpuif_req_stall_rd = cpuif_req_stall_rd;
    assign s_cpuif_rd_ack = cpuif_rd_ack;
    assign s_cpuif_rd_err = cpuif_rd_err;
    assign s_cpuif_rd_data = cpuif_rd_data;
    assign s_cpuif_wr_ack = cpuif_wr_ack;
    assign s_cpuif_wr_err = cpuif_wr_err;

    logic cpuif_req_masked;

    // Read & write latencies are balanced. Stalls not required
    assign cpuif_req_stall_rd = '0;
    assign cpuif_req_stall_wr = '0;
    assign cpuif_req_masked = cpuif_req;

    //--------------------------------------------------------------------------
    // Address Decode
    //--------------------------------------------------------------------------
    typedef struct packed{
        logic [10-1:0]StickyDataVaultCtrl;
        logic [10-1:0][12-1:0]STICKY_DATA_VAULT_ENTRY;
        logic [10-1:0]DataVaultCtrl;
        logic [10-1:0][12-1:0]DATA_VAULT_ENTRY;
        logic [10-1:0]LockableScratchRegCtrl;
        logic [10-1:0]LockableScratchReg;
        logic [8-1:0]NonStickyGenericScratchReg;
        logic [8-1:0]StickyLockableScratchRegCtrl;
        logic [8-1:0]StickyLockableScratchReg;
    } decoded_reg_strb_t;
    decoded_reg_strb_t decoded_reg_strb;
    logic decoded_req;
    logic decoded_req_is_wr;
    logic [31:0] decoded_wr_data;
    logic [31:0] decoded_wr_biten;

    always_comb begin
        for(int i0=0; i0<10; i0++) begin
            decoded_reg_strb.StickyDataVaultCtrl[i0] = cpuif_req_masked & (cpuif_addr == 'h0 + i0*'h4);
        end
        for(int i0=0; i0<10; i0++) begin
            for(int i1=0; i1<12; i1++) begin
                decoded_reg_strb.STICKY_DATA_VAULT_ENTRY[i0][i1] = cpuif_req_masked & (cpuif_addr == 'h28 + i0*'h30 + i1*'h4);
            end
        end
        for(int i0=0; i0<10; i0++) begin
            decoded_reg_strb.DataVaultCtrl[i0] = cpuif_req_masked & (cpuif_addr == 'h208 + i0*'h4);
        end
        for(int i0=0; i0<10; i0++) begin
            for(int i1=0; i1<12; i1++) begin
                decoded_reg_strb.DATA_VAULT_ENTRY[i0][i1] = cpuif_req_masked & (cpuif_addr == 'h230 + i0*'h30 + i1*'h4);
            end
        end
        for(int i0=0; i0<10; i0++) begin
            decoded_reg_strb.LockableScratchRegCtrl[i0] = cpuif_req_masked & (cpuif_addr == 'h410 + i0*'h4);
        end
        for(int i0=0; i0<10; i0++) begin
            decoded_reg_strb.LockableScratchReg[i0] = cpuif_req_masked & (cpuif_addr == 'h438 + i0*'h4);
        end
        for(int i0=0; i0<8; i0++) begin
            decoded_reg_strb.NonStickyGenericScratchReg[i0] = cpuif_req_masked & (cpuif_addr == 'h460 + i0*'h4);
        end
        for(int i0=0; i0<8; i0++) begin
            decoded_reg_strb.StickyLockableScratchRegCtrl[i0] = cpuif_req_masked & (cpuif_addr == 'h480 + i0*'h4);
        end
        for(int i0=0; i0<8; i0++) begin
            decoded_reg_strb.StickyLockableScratchReg[i0] = cpuif_req_masked & (cpuif_addr == 'h4a0 + i0*'h4);
        end
    end

    // Pass down signals to next stage
    assign decoded_req = cpuif_req_masked;
    assign decoded_req_is_wr = cpuif_req_is_wr;
    assign decoded_wr_data = cpuif_wr_data;
    assign decoded_wr_biten = cpuif_wr_biten;


    // Writes are always granted with no error response
    assign cpuif_wr_ack = decoded_req & decoded_req_is_wr;
    assign cpuif_wr_err = '0;
    //--------------------------------------------------------------------------
    // Field logic
    //--------------------------------------------------------------------------
    typedef struct packed{
        struct packed{
            struct packed{
                logic next;
                logic load_next;
            } lock_entry;
        } [10-1:0]StickyDataVaultCtrl;
        struct packed{
            struct packed{
                logic [31:0] next;
                logic load_next;
            } data;
        } [10-1:0][12-1:0]STICKY_DATA_VAULT_ENTRY;
        struct packed{
            struct packed{
                logic next;
                logic load_next;
            } lock_entry;
        } [10-1:0]DataVaultCtrl;
        struct packed{
            struct packed{
                logic [31:0] next;
                logic load_next;
            } data;
        } [10-1:0][12-1:0]DATA_VAULT_ENTRY;
        struct packed{
            struct packed{
                logic next;
                logic load_next;
            } lock_entry;
        } [10-1:0]LockableScratchRegCtrl;
        struct packed{
            struct packed{
                logic [31:0] next;
                logic load_next;
            } data;
        } [10-1:0]LockableScratchReg;
        struct packed{
            struct packed{
                logic [31:0] next;
                logic load_next;
            } data;
        } [8-1:0]NonStickyGenericScratchReg;
        struct packed{
            struct packed{
                logic next;
                logic load_next;
            } lock_entry;
        } [8-1:0]StickyLockableScratchRegCtrl;
        struct packed{
            struct packed{
                logic [31:0] next;
                logic load_next;
            } data;
        } [8-1:0]StickyLockableScratchReg;
    } field_combo_t;
    field_combo_t field_combo;

    typedef struct packed{
        struct packed{
            struct packed{
                logic value;
            } lock_entry;
        } [10-1:0]StickyDataVaultCtrl;
        struct packed{
            struct packed{
                logic [31:0] value;
            } data;
        } [10-1:0][12-1:0]STICKY_DATA_VAULT_ENTRY;
        struct packed{
            struct packed{
                logic value;
            } lock_entry;
        } [10-1:0]DataVaultCtrl;
        struct packed{
            struct packed{
                logic [31:0] value;
            } data;
        } [10-1:0][12-1:0]DATA_VAULT_ENTRY;
        struct packed{
            struct packed{
                logic value;
            } lock_entry;
        } [10-1:0]LockableScratchRegCtrl;
        struct packed{
            struct packed{
                logic [31:0] value;
            } data;
        } [10-1:0]LockableScratchReg;
        struct packed{
            struct packed{
                logic [31:0] value;
            } data;
        } [8-1:0]NonStickyGenericScratchReg;
        struct packed{
            struct packed{
                logic value;
            } lock_entry;
        } [8-1:0]StickyLockableScratchRegCtrl;
        struct packed{
            struct packed{
                logic [31:0] value;
            } data;
        } [8-1:0]StickyLockableScratchReg;
    } field_storage_t;
    field_storage_t field_storage;

    for(genvar i0=0; i0<10; i0++) begin
        // Field: dv_reg.StickyDataVaultCtrl[].lock_entry
        always_comb begin
            automatic logic [0:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.StickyDataVaultCtrl[i0].lock_entry.value;
            load_next_c =  '0;
            if(decoded_reg_strb.StickyDataVaultCtrl[i0] && decoded_req_is_wr && !(hwif_in.StickyDataVaultCtrl[i0].lock_entry.swwel)) begin // SW write
                next_c = (field_storage.StickyDataVaultCtrl[i0].lock_entry.value & ~decoded_wr_biten[0:0]) | (decoded_wr_data[0:0] & decoded_wr_biten[0:0]);
                load_next_c = '1;
            end
            field_combo.StickyDataVaultCtrl[i0].lock_entry.next = next_c;
            field_combo.StickyDataVaultCtrl[i0].lock_entry.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
            if(~hwif_in.hard_reset_b) begin
                field_storage.StickyDataVaultCtrl[i0].lock_entry.value <= 'h0;
            end else if(field_combo.StickyDataVaultCtrl[i0].lock_entry.load_next) begin
                field_storage.StickyDataVaultCtrl[i0].lock_entry.value <= field_combo.StickyDataVaultCtrl[i0].lock_entry.next;
            end
        end
        assign hwif_out.StickyDataVaultCtrl[i0].lock_entry.value = field_storage.StickyDataVaultCtrl[i0].lock_entry.value;
    end
    for(genvar i0=0; i0<10; i0++) begin
        for(genvar i1=0; i1<12; i1++) begin
            // Field: dv_reg.STICKY_DATA_VAULT_ENTRY[][].data
            always_comb begin
                automatic logic [31:0] next_c;
                automatic logic load_next_c;
                next_c =  field_storage.STICKY_DATA_VAULT_ENTRY[i0][i1].data.value;
                load_next_c =  '0;
                if(decoded_reg_strb.STICKY_DATA_VAULT_ENTRY[i0][i1] && decoded_req_is_wr && !(hwif_in.STICKY_DATA_VAULT_ENTRY[i0][i1].data.swwel)) begin // SW write
                    next_c = (field_storage.STICKY_DATA_VAULT_ENTRY[i0][i1].data.value & ~decoded_wr_biten[31:0]) | (decoded_wr_data[31:0] & decoded_wr_biten[31:0]);
                    load_next_c = '1;
                end
                field_combo.STICKY_DATA_VAULT_ENTRY[i0][i1].data.next = next_c;
                field_combo.STICKY_DATA_VAULT_ENTRY[i0][i1].data.load_next = load_next_c;
            end
            always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
                if(~hwif_in.hard_reset_b) begin
                    field_storage.STICKY_DATA_VAULT_ENTRY[i0][i1].data.value <= 'h0;
                end else if(field_combo.STICKY_DATA_VAULT_ENTRY[i0][i1].data.load_next) begin
                    field_storage.STICKY_DATA_VAULT_ENTRY[i0][i1].data.value <= field_combo.STICKY_DATA_VAULT_ENTRY[i0][i1].data.next;
                end
            end
        end
    end
    for(genvar i0=0; i0<10; i0++) begin
        // Field: dv_reg.DataVaultCtrl[].lock_entry
        always_comb begin
            automatic logic [0:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.DataVaultCtrl[i0].lock_entry.value;
            load_next_c =  '0;
            if(decoded_reg_strb.DataVaultCtrl[i0] && decoded_req_is_wr && !(hwif_in.DataVaultCtrl[i0].lock_entry.swwel)) begin // SW write
                next_c = (field_storage.DataVaultCtrl[i0].lock_entry.value & ~decoded_wr_biten[0:0]) | (decoded_wr_data[0:0] & decoded_wr_biten[0:0]);
                load_next_c = '1;
            end
            field_combo.DataVaultCtrl[i0].lock_entry.next = next_c;
            field_combo.DataVaultCtrl[i0].lock_entry.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.core_only_rst_b) begin
            if(~hwif_in.core_only_rst_b) begin
                field_storage.DataVaultCtrl[i0].lock_entry.value <= 'h0;
            end else if(field_combo.DataVaultCtrl[i0].lock_entry.load_next) begin
                field_storage.DataVaultCtrl[i0].lock_entry.value <= field_combo.DataVaultCtrl[i0].lock_entry.next;
            end
        end
        assign hwif_out.DataVaultCtrl[i0].lock_entry.value = field_storage.DataVaultCtrl[i0].lock_entry.value;
    end
    for(genvar i0=0; i0<10; i0++) begin
        for(genvar i1=0; i1<12; i1++) begin
            // Field: dv_reg.DATA_VAULT_ENTRY[][].data
            always_comb begin
                automatic logic [31:0] next_c;
                automatic logic load_next_c;
                next_c =  field_storage.DATA_VAULT_ENTRY[i0][i1].data.value;
                load_next_c =  '0;
                if(decoded_reg_strb.DATA_VAULT_ENTRY[i0][i1] && decoded_req_is_wr && !(hwif_in.DATA_VAULT_ENTRY[i0][i1].data.swwel)) begin // SW write
                    next_c = (field_storage.DATA_VAULT_ENTRY[i0][i1].data.value & ~decoded_wr_biten[31:0]) | (decoded_wr_data[31:0] & decoded_wr_biten[31:0]);
                    load_next_c = '1;
                end
                field_combo.DATA_VAULT_ENTRY[i0][i1].data.next = next_c;
                field_combo.DATA_VAULT_ENTRY[i0][i1].data.load_next = load_next_c;
            end
            always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
                if(~hwif_in.hard_reset_b) begin
                    field_storage.DATA_VAULT_ENTRY[i0][i1].data.value <= 'h0;
                end else if(field_combo.DATA_VAULT_ENTRY[i0][i1].data.load_next) begin
                    field_storage.DATA_VAULT_ENTRY[i0][i1].data.value <= field_combo.DATA_VAULT_ENTRY[i0][i1].data.next;
                end
            end
        end
    end
    for(genvar i0=0; i0<10; i0++) begin
        // Field: dv_reg.LockableScratchRegCtrl[].lock_entry
        always_comb begin
            automatic logic [0:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.LockableScratchRegCtrl[i0].lock_entry.value;
            load_next_c =  '0;
            if(decoded_reg_strb.LockableScratchRegCtrl[i0] && decoded_req_is_wr && !(hwif_in.LockableScratchRegCtrl[i0].lock_entry.swwel)) begin // SW write
                next_c = (field_storage.LockableScratchRegCtrl[i0].lock_entry.value & ~decoded_wr_biten[0:0]) | (decoded_wr_data[0:0] & decoded_wr_biten[0:0]);
                load_next_c = '1;
            end
            field_combo.LockableScratchRegCtrl[i0].lock_entry.next = next_c;
            field_combo.LockableScratchRegCtrl[i0].lock_entry.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.core_only_rst_b) begin
            if(~hwif_in.core_only_rst_b) begin
                field_storage.LockableScratchRegCtrl[i0].lock_entry.value <= 'h0;
            end else if(field_combo.LockableScratchRegCtrl[i0].lock_entry.load_next) begin
                field_storage.LockableScratchRegCtrl[i0].lock_entry.value <= field_combo.LockableScratchRegCtrl[i0].lock_entry.next;
            end
        end
        assign hwif_out.LockableScratchRegCtrl[i0].lock_entry.value = field_storage.LockableScratchRegCtrl[i0].lock_entry.value;
    end
    for(genvar i0=0; i0<10; i0++) begin
        // Field: dv_reg.LockableScratchReg[].data
        always_comb begin
            automatic logic [31:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.LockableScratchReg[i0].data.value;
            load_next_c =  '0;
            if(decoded_reg_strb.LockableScratchReg[i0] && decoded_req_is_wr && !(hwif_in.LockableScratchReg[i0].data.swwel)) begin // SW write
                next_c = (field_storage.LockableScratchReg[i0].data.value & ~decoded_wr_biten[31:0]) | (decoded_wr_data[31:0] & decoded_wr_biten[31:0]);
                load_next_c = '1;
            end
            field_combo.LockableScratchReg[i0].data.next = next_c;
            field_combo.LockableScratchReg[i0].data.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
            if(~hwif_in.hard_reset_b) begin
                field_storage.LockableScratchReg[i0].data.value <= 'h0;
            end else if(field_combo.LockableScratchReg[i0].data.load_next) begin
                field_storage.LockableScratchReg[i0].data.value <= field_combo.LockableScratchReg[i0].data.next;
            end
        end
    end
    for(genvar i0=0; i0<8; i0++) begin
        // Field: dv_reg.NonStickyGenericScratchReg[].data
        always_comb begin
            automatic logic [31:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.NonStickyGenericScratchReg[i0].data.value;
            load_next_c =  '0;
            if(decoded_reg_strb.NonStickyGenericScratchReg[i0] && decoded_req_is_wr) begin // SW write
                next_c = (field_storage.NonStickyGenericScratchReg[i0].data.value & ~decoded_wr_biten[31:0]) | (decoded_wr_data[31:0] & decoded_wr_biten[31:0]);
                load_next_c = '1;
            end
            field_combo.NonStickyGenericScratchReg[i0].data.next = next_c;
            field_combo.NonStickyGenericScratchReg[i0].data.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.reset_b) begin
            if(~hwif_in.reset_b) begin
                field_storage.NonStickyGenericScratchReg[i0].data.value <= 'h0;
            end else if(field_combo.NonStickyGenericScratchReg[i0].data.load_next) begin
                field_storage.NonStickyGenericScratchReg[i0].data.value <= field_combo.NonStickyGenericScratchReg[i0].data.next;
            end
        end
    end
    for(genvar i0=0; i0<8; i0++) begin
        // Field: dv_reg.StickyLockableScratchRegCtrl[].lock_entry
        always_comb begin
            automatic logic [0:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value;
            load_next_c =  '0;
            if(decoded_reg_strb.StickyLockableScratchRegCtrl[i0] && decoded_req_is_wr && !(hwif_in.StickyLockableScratchRegCtrl[i0].lock_entry.swwel)) begin // SW write
                next_c = (field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value & ~decoded_wr_biten[0:0]) | (decoded_wr_data[0:0] & decoded_wr_biten[0:0]);
                load_next_c = '1;
            end
            field_combo.StickyLockableScratchRegCtrl[i0].lock_entry.next = next_c;
            field_combo.StickyLockableScratchRegCtrl[i0].lock_entry.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
            if(~hwif_in.hard_reset_b) begin
                field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value <= 'h0;
            end else if(field_combo.StickyLockableScratchRegCtrl[i0].lock_entry.load_next) begin
                field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value <= field_combo.StickyLockableScratchRegCtrl[i0].lock_entry.next;
            end
        end
        assign hwif_out.StickyLockableScratchRegCtrl[i0].lock_entry.value = field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value;
    end
    for(genvar i0=0; i0<8; i0++) begin
        // Field: dv_reg.StickyLockableScratchReg[].data
        always_comb begin
            automatic logic [31:0] next_c;
            automatic logic load_next_c;
            next_c =  field_storage.StickyLockableScratchReg[i0].data.value;
            load_next_c =  '0;
            if(decoded_reg_strb.StickyLockableScratchReg[i0] && decoded_req_is_wr && !(hwif_in.StickyLockableScratchReg[i0].data.swwel)) begin // SW write
                next_c = (field_storage.StickyLockableScratchReg[i0].data.value & ~decoded_wr_biten[31:0]) | (decoded_wr_data[31:0] & decoded_wr_biten[31:0]);
                load_next_c = '1;
            end
            field_combo.StickyLockableScratchReg[i0].data.next = next_c;
            field_combo.StickyLockableScratchReg[i0].data.load_next = load_next_c;
        end
        always_ff @(posedge clk or negedge hwif_in.hard_reset_b) begin
            if(~hwif_in.hard_reset_b) begin
                field_storage.StickyLockableScratchReg[i0].data.value <= 'h0;
            end else if(field_combo.StickyLockableScratchReg[i0].data.load_next) begin
                field_storage.StickyLockableScratchReg[i0].data.value <= field_combo.StickyLockableScratchReg[i0].data.next;
            end
        end
    end
    //--------------------------------------------------------------------------
    // Readback
    //--------------------------------------------------------------------------
    logic readback_err;
    logic readback_done;
    logic [31:0] readback_data;
    
    // Assign readback values to a flattened array
    logic [304-1:0][31:0] readback_array;
    for(genvar i0=0; i0<10; i0++) begin
        assign readback_array[i0*1 + 0][0:0] = (decoded_reg_strb.StickyDataVaultCtrl[i0] && !decoded_req_is_wr) ? field_storage.StickyDataVaultCtrl[i0].lock_entry.value : '0;
        assign readback_array[i0*1 + 0][31:1] = '0;
    end
    for(genvar i0=0; i0<10; i0++) begin
        for(genvar i1=0; i1<12; i1++) begin
            assign readback_array[i0*12 + i1*1 + 10][31:0] = (decoded_reg_strb.STICKY_DATA_VAULT_ENTRY[i0][i1] && !decoded_req_is_wr) ? field_storage.STICKY_DATA_VAULT_ENTRY[i0][i1].data.value : '0;
        end
    end
    for(genvar i0=0; i0<10; i0++) begin
        assign readback_array[i0*1 + 130][0:0] = (decoded_reg_strb.DataVaultCtrl[i0] && !decoded_req_is_wr) ? field_storage.DataVaultCtrl[i0].lock_entry.value : '0;
        assign readback_array[i0*1 + 130][31:1] = '0;
    end
    for(genvar i0=0; i0<10; i0++) begin
        for(genvar i1=0; i1<12; i1++) begin
            assign readback_array[i0*12 + i1*1 + 140][31:0] = (decoded_reg_strb.DATA_VAULT_ENTRY[i0][i1] && !decoded_req_is_wr) ? field_storage.DATA_VAULT_ENTRY[i0][i1].data.value : '0;
        end
    end
    for(genvar i0=0; i0<10; i0++) begin
        assign readback_array[i0*1 + 260][0:0] = (decoded_reg_strb.LockableScratchRegCtrl[i0] && !decoded_req_is_wr) ? field_storage.LockableScratchRegCtrl[i0].lock_entry.value : '0;
        assign readback_array[i0*1 + 260][31:1] = '0;
    end
    for(genvar i0=0; i0<10; i0++) begin
        assign readback_array[i0*1 + 270][31:0] = (decoded_reg_strb.LockableScratchReg[i0] && !decoded_req_is_wr) ? field_storage.LockableScratchReg[i0].data.value : '0;
    end
    for(genvar i0=0; i0<8; i0++) begin
        assign readback_array[i0*1 + 280][31:0] = (decoded_reg_strb.NonStickyGenericScratchReg[i0] && !decoded_req_is_wr) ? field_storage.NonStickyGenericScratchReg[i0].data.value : '0;
    end
    for(genvar i0=0; i0<8; i0++) begin
        assign readback_array[i0*1 + 288][0:0] = (decoded_reg_strb.StickyLockableScratchRegCtrl[i0] && !decoded_req_is_wr) ? field_storage.StickyLockableScratchRegCtrl[i0].lock_entry.value : '0;
        assign readback_array[i0*1 + 288][31:1] = '0;
    end
    for(genvar i0=0; i0<8; i0++) begin
        assign readback_array[i0*1 + 296][31:0] = (decoded_reg_strb.StickyLockableScratchReg[i0] && !decoded_req_is_wr) ? field_storage.StickyLockableScratchReg[i0].data.value : '0;
    end

    // Reduce the array
    always_comb begin
        automatic logic [31:0] readback_data_var;
        readback_done = decoded_req & ~decoded_req_is_wr;
        readback_err = '0;
        readback_data_var = '0;
        for(int i=0; i<304; i++) readback_data_var |= readback_array[i];
        readback_data = readback_data_var;
    end

    assign cpuif_rd_ack = readback_done;
    assign cpuif_rd_data = readback_data;
    assign cpuif_rd_err = readback_err;
endmodule
