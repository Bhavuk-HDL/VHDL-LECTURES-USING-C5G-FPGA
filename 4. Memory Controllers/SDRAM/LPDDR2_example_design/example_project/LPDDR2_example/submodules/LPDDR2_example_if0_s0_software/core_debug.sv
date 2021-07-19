package LPDDR2_example_if0_s0_seq_core_debug_pkg;
	parameter SEQ_CORE_DEBUG_BASE = 'h00015238;
	parameter SEQ_CORE_DEBUG_SIZE = 'h000008f4;
	parameter SEQ_CORE_CMD_SIZE = 'h16;
	parameter SEQ_CORE_CMD_BASE = (SEQ_CORE_DEBUG_BASE + 'h8);
	parameter SEQ_CORE_REQ_CMD = (SEQ_CORE_CMD_BASE + 'h0);
	parameter SEQ_CORE_CMD_STATUS = (SEQ_CORE_CMD_BASE + 'h4);
	parameter SEQ_CORE_CMD_PARAMS = (SEQ_CORE_CMD_BASE + 'h8);
	parameter GBL_ADDR = 'h0001520c;
endpackage
