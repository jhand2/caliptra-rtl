// Generated by PeakRDL-regblock - A free and open-source SystemVerilog generator
//  https://github.com/SystemRDL/PeakRDL-regblock

package ecc_reg_pkg;

    localparam ECC_REG_DATA_WIDTH = 32;
    localparam ECC_REG_MIN_ADDR_WIDTH = 12;

    typedef struct packed{
        logic [31:0] next;
    } ecc_reg__ECC_NAME__NAME__in_t;

    typedef struct packed{
        ecc_reg__ECC_NAME__NAME__in_t NAME;
    } ecc_reg__ECC_NAME__in_t;

    typedef struct packed{
        logic [31:0] next;
    } ecc_reg__ECC_VERSION__VERSION__in_t;

    typedef struct packed{
        ecc_reg__ECC_VERSION__VERSION__in_t VERSION;
    } ecc_reg__ECC_VERSION__in_t;

    typedef struct packed{
        logic hwclr;
    } ecc_reg__ECC_CTRL__CTRL__in_t;

    typedef struct packed{
        logic hwclr;
    } ecc_reg__ECC_CTRL__PCR_SIGN__in_t;

    typedef struct packed{
        ecc_reg__ECC_CTRL__CTRL__in_t CTRL;
        ecc_reg__ECC_CTRL__PCR_SIGN__in_t PCR_SIGN;
    } ecc_reg__ECC_CTRL__in_t;

    typedef struct packed{
        logic next;
    } ecc_reg__ECC_STATUS__READY__in_t;

    typedef struct packed{
        logic next;
    } ecc_reg__ECC_STATUS__VALID__in_t;

    typedef struct packed{
        ecc_reg__ECC_STATUS__READY__in_t READY;
        ecc_reg__ECC_STATUS__VALID__in_t VALID;
    } ecc_reg__ECC_STATUS__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic swwe;
        logic hwclr;
    } ecc_reg__ECC_SEED__SEED__in_t;

    typedef struct packed{
        ecc_reg__ECC_SEED__SEED__in_t SEED;
    } ecc_reg__ECC_SEED__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_MSG__MSG__in_t;

    typedef struct packed{
        ecc_reg__ECC_MSG__MSG__in_t MSG;
    } ecc_reg__ECC_MSG__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_PRIVKEY_OUT__PRIVKEY_OUT__in_t;

    typedef struct packed{
        ecc_reg__ECC_PRIVKEY_OUT__PRIVKEY_OUT__in_t PRIVKEY_OUT;
    } ecc_reg__ECC_PRIVKEY_OUT__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_PUBKEY_X__PUBKEY_X__in_t;

    typedef struct packed{
        ecc_reg__ECC_PUBKEY_X__PUBKEY_X__in_t PUBKEY_X;
    } ecc_reg__ECC_PUBKEY_X__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_PUBKEY_Y__PUBKEY_Y__in_t;

    typedef struct packed{
        ecc_reg__ECC_PUBKEY_Y__PUBKEY_Y__in_t PUBKEY_Y;
    } ecc_reg__ECC_PUBKEY_Y__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_SIGN_R__SIGN_R__in_t;

    typedef struct packed{
        ecc_reg__ECC_SIGN_R__SIGN_R__in_t SIGN_R;
    } ecc_reg__ECC_SIGN_R__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_SIGN_S__SIGN_S__in_t;

    typedef struct packed{
        ecc_reg__ECC_SIGN_S__SIGN_S__in_t SIGN_S;
    } ecc_reg__ECC_SIGN_S__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic hwclr;
    } ecc_reg__ECC_VERIFY_R__VERIFY_R__in_t;

    typedef struct packed{
        ecc_reg__ECC_VERIFY_R__VERIFY_R__in_t VERIFY_R;
    } ecc_reg__ECC_VERIFY_R__in_t;

    typedef struct packed{
        logic hwclr;
    } ecc_reg__ECC_IV__IV__in_t;

    typedef struct packed{
        ecc_reg__ECC_IV__IV__in_t IV;
    } ecc_reg__ECC_IV__in_t;

    typedef struct packed{
        logic hwclr;
    } ecc_reg__ECC_NONCE__NONCE__in_t;

    typedef struct packed{
        ecc_reg__ECC_NONCE__NONCE__in_t NONCE;
    } ecc_reg__ECC_NONCE__in_t;

    typedef struct packed{
        logic [31:0] next;
        logic we;
        logic swwe;
        logic hwclr;
    } ecc_reg__ECC_PRIVKEY_IN__PRIVKEY_IN__in_t;

    typedef struct packed{
        ecc_reg__ECC_PRIVKEY_IN__PRIVKEY_IN__in_t PRIVKEY_IN;
    } ecc_reg__ECC_PRIVKEY_IN__in_t;

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
        logic hwclr;
    } kv_write_ctrl_reg__write_en__in_t;

    typedef struct packed{
        kv_write_ctrl_reg__write_en__in_t write_en;
    } kv_write_ctrl_reg__in_t;

    typedef struct packed{
        logic hwset;
    } ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__error_internal_sts_enable_d33001bb_next_52b75ffa_resetsignal_0d7eaa27__in_t;

    typedef struct packed{
        ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__error_internal_sts_enable_d33001bb_next_52b75ffa_resetsignal_0d7eaa27__in_t error_internal_sts;
    } ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__in_t;

    typedef struct packed{
        logic hwset;
    } ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__notif_cmd_done_sts_enable_dabe0b8b_next_540fa3b7__in_t;

    typedef struct packed{
        ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__notif_cmd_done_sts_enable_dabe0b8b_next_540fa3b7__in_t notif_cmd_done_sts;
    } ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__in_t;

    typedef struct packed{
        ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__in_t error_internal_intr_r;
        ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__in_t notif_internal_intr_r;
    } ecc_reg__intr_block_t__in_t;

    typedef struct packed{
        logic reset_b;
        logic hard_reset_b;
        logic ecc_ready;
        ecc_reg__ECC_NAME__in_t [2-1:0]ECC_NAME;
        ecc_reg__ECC_VERSION__in_t [2-1:0]ECC_VERSION;
        ecc_reg__ECC_CTRL__in_t ECC_CTRL;
        ecc_reg__ECC_STATUS__in_t ECC_STATUS;
        ecc_reg__ECC_SEED__in_t [12-1:0]ECC_SEED;
        ecc_reg__ECC_MSG__in_t [12-1:0]ECC_MSG;
        ecc_reg__ECC_PRIVKEY_OUT__in_t [12-1:0]ECC_PRIVKEY_OUT;
        ecc_reg__ECC_PUBKEY_X__in_t [12-1:0]ECC_PUBKEY_X;
        ecc_reg__ECC_PUBKEY_Y__in_t [12-1:0]ECC_PUBKEY_Y;
        ecc_reg__ECC_SIGN_R__in_t [12-1:0]ECC_SIGN_R;
        ecc_reg__ECC_SIGN_S__in_t [12-1:0]ECC_SIGN_S;
        ecc_reg__ECC_VERIFY_R__in_t [12-1:0]ECC_VERIFY_R;
        ecc_reg__ECC_IV__in_t [12-1:0]ECC_IV;
        ecc_reg__ECC_NONCE__in_t [12-1:0]ECC_NONCE;
        ecc_reg__ECC_PRIVKEY_IN__in_t [12-1:0]ECC_PRIVKEY_IN;
        kv_read_ctrl_reg__in_t ecc_kv_rd_pkey_ctrl;
        kv_status_reg__in_t ecc_kv_rd_pkey_status;
        kv_read_ctrl_reg__in_t ecc_kv_rd_seed_ctrl;
        kv_status_reg__in_t ecc_kv_rd_seed_status;
        kv_write_ctrl_reg__in_t ecc_kv_wr_pkey_ctrl;
        kv_status_reg__in_t ecc_kv_wr_pkey_status;
        ecc_reg__intr_block_t__in_t intr_block_rf;
    } ecc_reg__in_t;

    typedef struct packed{
        logic [1:0] value;
    } ecc_reg__ECC_CTRL__CTRL__out_t;

    typedef struct packed{
        logic value;
    } ecc_reg__ECC_CTRL__ZEROIZE__out_t;

    typedef struct packed{
        logic value;
    } ecc_reg__ECC_CTRL__PCR_SIGN__out_t;

    typedef struct packed{
        ecc_reg__ECC_CTRL__CTRL__out_t CTRL;
        ecc_reg__ECC_CTRL__ZEROIZE__out_t ZEROIZE;
        ecc_reg__ECC_CTRL__PCR_SIGN__out_t PCR_SIGN;
    } ecc_reg__ECC_CTRL__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_SEED__SEED__out_t;

    typedef struct packed{
        ecc_reg__ECC_SEED__SEED__out_t SEED;
    } ecc_reg__ECC_SEED__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_MSG__MSG__out_t;

    typedef struct packed{
        ecc_reg__ECC_MSG__MSG__out_t MSG;
    } ecc_reg__ECC_MSG__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_PUBKEY_X__PUBKEY_X__out_t;

    typedef struct packed{
        ecc_reg__ECC_PUBKEY_X__PUBKEY_X__out_t PUBKEY_X;
    } ecc_reg__ECC_PUBKEY_X__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_PUBKEY_Y__PUBKEY_Y__out_t;

    typedef struct packed{
        ecc_reg__ECC_PUBKEY_Y__PUBKEY_Y__out_t PUBKEY_Y;
    } ecc_reg__ECC_PUBKEY_Y__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_SIGN_R__SIGN_R__out_t;

    typedef struct packed{
        ecc_reg__ECC_SIGN_R__SIGN_R__out_t SIGN_R;
    } ecc_reg__ECC_SIGN_R__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_SIGN_S__SIGN_S__out_t;

    typedef struct packed{
        ecc_reg__ECC_SIGN_S__SIGN_S__out_t SIGN_S;
    } ecc_reg__ECC_SIGN_S__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_VERIFY_R__VERIFY_R__out_t;

    typedef struct packed{
        ecc_reg__ECC_VERIFY_R__VERIFY_R__out_t VERIFY_R;
    } ecc_reg__ECC_VERIFY_R__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_IV__IV__out_t;

    typedef struct packed{
        ecc_reg__ECC_IV__IV__out_t IV;
    } ecc_reg__ECC_IV__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_NONCE__NONCE__out_t;

    typedef struct packed{
        ecc_reg__ECC_NONCE__NONCE__out_t NONCE;
    } ecc_reg__ECC_NONCE__out_t;

    typedef struct packed{
        logic [31:0] value;
    } ecc_reg__ECC_PRIVKEY_IN__PRIVKEY_IN__out_t;

    typedef struct packed{
        ecc_reg__ECC_PRIVKEY_IN__PRIVKEY_IN__out_t PRIVKEY_IN;
    } ecc_reg__ECC_PRIVKEY_IN__out_t;

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
        logic value;
    } kv_write_ctrl_reg__write_en__out_t;

    typedef struct packed{
        logic [4:0] value;
    } kv_write_ctrl_reg__write_entry__out_t;

    typedef struct packed{
        logic value;
    } kv_write_ctrl_reg__hmac_key_dest_valid__out_t;

    typedef struct packed{
        logic value;
    } kv_write_ctrl_reg__hmac_block_dest_valid__out_t;

    typedef struct packed{
        logic value;
    } kv_write_ctrl_reg__sha_block_dest_valid__out_t;

    typedef struct packed{
        logic value;
    } kv_write_ctrl_reg__ecc_pkey_dest_valid__out_t;

    typedef struct packed{
        logic value;
    } kv_write_ctrl_reg__ecc_seed_dest_valid__out_t;

    typedef struct packed{
        logic [20:0] value;
    } kv_write_ctrl_reg__rsvd__out_t;

    typedef struct packed{
        kv_write_ctrl_reg__write_en__out_t write_en;
        kv_write_ctrl_reg__write_entry__out_t write_entry;
        kv_write_ctrl_reg__hmac_key_dest_valid__out_t hmac_key_dest_valid;
        kv_write_ctrl_reg__hmac_block_dest_valid__out_t hmac_block_dest_valid;
        kv_write_ctrl_reg__sha_block_dest_valid__out_t sha_block_dest_valid;
        kv_write_ctrl_reg__ecc_pkey_dest_valid__out_t ecc_pkey_dest_valid;
        kv_write_ctrl_reg__ecc_seed_dest_valid__out_t ecc_seed_dest_valid;
        kv_write_ctrl_reg__rsvd__out_t rsvd;
    } kv_write_ctrl_reg__out_t;

    typedef struct packed{
        logic intr;
    } ecc_reg__intr_block_t__global_intr_t_agg_sts_dd3dcf0a__out_t;

    typedef struct packed{
        logic intr;
    } ecc_reg__intr_block_t__global_intr_t_agg_sts_e6399b4a__out_t;

    typedef struct packed{
        logic intr;
    } ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__out_t;

    typedef struct packed{
        logic intr;
    } ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__out_t;

    typedef struct packed{
        ecc_reg__intr_block_t__global_intr_t_agg_sts_dd3dcf0a__out_t error_global_intr_r;
        ecc_reg__intr_block_t__global_intr_t_agg_sts_e6399b4a__out_t notif_global_intr_r;
        ecc_reg__intr_block_t__error_intr_t_error_internal_sts_83adab02__out_t error_internal_intr_r;
        ecc_reg__intr_block_t__notif_intr_t_notif_cmd_done_sts_1c68637e__out_t notif_internal_intr_r;
    } ecc_reg__intr_block_t__out_t;

    typedef struct packed{
        ecc_reg__ECC_CTRL__out_t ECC_CTRL;
        ecc_reg__ECC_SEED__out_t [12-1:0]ECC_SEED;
        ecc_reg__ECC_MSG__out_t [12-1:0]ECC_MSG;
        ecc_reg__ECC_PUBKEY_X__out_t [12-1:0]ECC_PUBKEY_X;
        ecc_reg__ECC_PUBKEY_Y__out_t [12-1:0]ECC_PUBKEY_Y;
        ecc_reg__ECC_SIGN_R__out_t [12-1:0]ECC_SIGN_R;
        ecc_reg__ECC_SIGN_S__out_t [12-1:0]ECC_SIGN_S;
        ecc_reg__ECC_VERIFY_R__out_t [12-1:0]ECC_VERIFY_R;
        ecc_reg__ECC_IV__out_t [12-1:0]ECC_IV;
        ecc_reg__ECC_NONCE__out_t [12-1:0]ECC_NONCE;
        ecc_reg__ECC_PRIVKEY_IN__out_t [12-1:0]ECC_PRIVKEY_IN;
        kv_read_ctrl_reg__out_t ecc_kv_rd_pkey_ctrl;
        kv_read_ctrl_reg__out_t ecc_kv_rd_seed_ctrl;
        kv_write_ctrl_reg__out_t ecc_kv_wr_pkey_ctrl;
        ecc_reg__intr_block_t__out_t intr_block_rf;
    } ecc_reg__out_t;

    typedef enum logic [31:0] {
        kv_status_reg__ERROR__kv_error_e__SUCCESS = 'h0,
        kv_status_reg__ERROR__kv_error_e__KV_READ_FAIL = 'h1,
        kv_status_reg__ERROR__kv_error_e__KV_WRITE_FAIL = 'h2
    } kv_status_reg__ERROR__kv_error_e_e;

    localparam ECC_REG_ADDR_WIDTH = 32'd12;

endpackage