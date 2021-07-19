transcript on
if ![file isdirectory top_iputf_libs] {
	file mkdir top_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib top_iputf_libs/error_adapter_0
vmap error_adapter_0 ./top_iputf_libs/error_adapter_0
vlib top_iputf_libs/avalon_st_adapter
vmap avalon_st_adapter ./top_iputf_libs/avalon_st_adapter
vlib top_iputf_libs/crosser
vmap crosser ./top_iputf_libs/crosser
vlib top_iputf_libs/rsp_mux
vmap rsp_mux ./top_iputf_libs/rsp_mux
vlib top_iputf_libs/rsp_demux
vmap rsp_demux ./top_iputf_libs/rsp_demux
vlib top_iputf_libs/cmd_mux
vmap cmd_mux ./top_iputf_libs/cmd_mux
vlib top_iputf_libs/cmd_demux_001
vmap cmd_demux_001 ./top_iputf_libs/cmd_demux_001
vlib top_iputf_libs/cmd_demux
vmap cmd_demux ./top_iputf_libs/cmd_demux
vlib top_iputf_libs/router_002
vmap router_002 ./top_iputf_libs/router_002
vlib top_iputf_libs/router
vmap router ./top_iputf_libs/router
vlib top_iputf_libs/s0_seq_debug_agent
vmap s0_seq_debug_agent ./top_iputf_libs/s0_seq_debug_agent
vlib top_iputf_libs/dmaster_master_agent
vmap dmaster_master_agent ./top_iputf_libs/dmaster_master_agent
vlib top_iputf_libs/s0_seq_debug_translator
vmap s0_seq_debug_translator ./top_iputf_libs/s0_seq_debug_translator
vlib top_iputf_libs/dmaster_master_translator
vmap dmaster_master_translator ./top_iputf_libs/dmaster_master_translator
vlib top_iputf_libs/p2b_adapter
vmap p2b_adapter ./top_iputf_libs/p2b_adapter
vlib top_iputf_libs/b2p_adapter
vmap b2p_adapter ./top_iputf_libs/b2p_adapter
vlib top_iputf_libs/transacto
vmap transacto ./top_iputf_libs/transacto
vlib top_iputf_libs/p2b
vmap p2b ./top_iputf_libs/p2b
vlib top_iputf_libs/b2p
vmap b2p ./top_iputf_libs/b2p
vlib top_iputf_libs/fifo
vmap fifo ./top_iputf_libs/fifo
vlib top_iputf_libs/timing_adt
vmap timing_adt ./top_iputf_libs/timing_adt
vlib top_iputf_libs/jtag_phy_embedded_in_jtag_master
vmap jtag_phy_embedded_in_jtag_master ./top_iputf_libs/jtag_phy_embedded_in_jtag_master
vlib top_iputf_libs/rst_controller
vmap rst_controller ./top_iputf_libs/rst_controller
vlib top_iputf_libs/mm_interconnect_1
vmap mm_interconnect_1 ./top_iputf_libs/mm_interconnect_1
vlib top_iputf_libs/seq_bridge
vmap seq_bridge ./top_iputf_libs/seq_bridge
vlib top_iputf_libs/dll0
vmap dll0 ./top_iputf_libs/dll0
vlib top_iputf_libs/oct0
vmap oct0 ./top_iputf_libs/oct0
vlib top_iputf_libs/c0
vmap c0 ./top_iputf_libs/c0
vlib top_iputf_libs/dmaster
vmap dmaster ./top_iputf_libs/dmaster
vlib top_iputf_libs/s0
vmap s0 ./top_iputf_libs/s0
vlib top_iputf_libs/p0
vmap p0 ./top_iputf_libs/p0
vlib top_iputf_libs/pll0
vmap pll0 ./top_iputf_libs/pll0
vlib top_iputf_libs/LPDDR2
vmap LPDDR2 ./top_iputf_libs/LPDDR2
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 

file copy -force D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_AC_ROM.hex ./
file copy -force D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_inst_ROM.hex ./
file copy -force D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_sequencer_mem.hex ./

vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_avalon_st_adapter_error_adapter_0.sv"          -work error_adapter_0                 
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_avalon_st_adapter.vhd"                         -work avalon_st_adapter               
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_handshake_clock_crosser.v"                             -work crosser                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_clock_crosser.v"                                       -work crosser                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_base.v"                                       -work crosser                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_std_synchronizer_nocut.v"                                        -work crosser                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_rsp_mux.sv"                                    -work rsp_mux                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work rsp_mux                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_rsp_demux.sv"                                  -work rsp_demux                       
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_mux.sv"                                    -work cmd_mux                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work cmd_mux                         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_demux_001.sv"                              -work cmd_demux_001                   
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_demux.sv"                                  -work cmd_demux                       
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_router_002.sv"                                 -work router_002                      
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_router.sv"                                     -work router                          
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_slave_agent.sv"                                    -work s0_seq_debug_agent              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_burst_uncompressor.sv"                             -work s0_seq_debug_agent              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_master_agent.sv"                                   -work dmaster_master_agent            
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_slave_translator.sv"                               -work s0_seq_debug_translator         
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_master_translator.sv"                                     -work dmaster_master_translator       
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_p2b_adapter.sv"                                          -work p2b_adapter                     
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_b2p_adapter.sv"                                          -work b2p_adapter                     
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_packets_to_master.v"                                      -work transacto                       
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_packets_to_bytes.v"                                    -work p2b                             
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_bytes_to_packets.v"                                    -work b2p                             
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_sc_fifo.v"                                                -work fifo                            
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_timing_adt.sv"                                           -work timing_adt                      
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_jtag_interface.v"                                      -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_dc_streaming.v"                                             -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_sld_node.v"                                                 -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_streaming.v"                                                -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_clock_crosser.v"                                       -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_std_synchronizer_nocut.v"                                        -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_base.v"                                       -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_idle_remover.v"                                        -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_idle_inserter.v"                                       -work jtag_phy_embedded_in_jtag_master
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_stage.sv"                                     -work jtag_phy_embedded_in_jtag_master
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_reset_controller.v"                                       -work rst_controller                  
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_reset_synchronizer.v"                                     -work rst_controller                  
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1.vhd"                                           -work mm_interconnect_1               
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_mm_interconnect_1_s0_seq_debug_agent_rsp_fifo.vhd"               -work mm_interconnect_1               
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_mm_interconnect_1_s0_seq_debug_agent_rdata_fifo.vhd"             -work mm_interconnect_1               
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_simple_avalon_mm_bridge.sv"                        -work seq_bridge                      
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_dll_cyclonev.sv"                                   -work dll0                            
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_oct_cyclonev.sv"                                   -work oct0                            
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_hard_memory_controller_top_cyclonev.sv"            -work c0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster.vhd"                                                     -work dmaster                         
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0.vhd"                                                          -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_seq_bridge.vhd"                                               -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_trk_mm_bridge.vhd"                                            -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_mm_bridge.v"                                              -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                          -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"               -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                         -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_rst.sv"                                         -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_simple_avalon_mm_bridge.sv"                               -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_irq_mapper.sv"                                                -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0.vhd"                                        -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_avalon_st_adapter.vhd"                      -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"       -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux.sv"                               -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_001.sv"                           -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_002.sv"                           -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_003.sv"                           -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux.sv"                                 -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux_002.sv"                             -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux_003.sv"                             -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_cpu_inst_data_master_translator.vhd"        -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_cpu_inst_instruction_master_translator.vhd" -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_hphy_bridge_s0_translator.vhd"              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router.sv"                                  -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_001.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_002.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_003.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_004.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_005.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_007.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_008.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_009.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_010.sv"                              -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_demux_002.sv"                           -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux.sv"                                 -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux_001.sv"                             -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux_002.sv"                             -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_mem_s1_translator.vhd"            -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_reg_file_inst_avl_translator.vhd" -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_scc_mgr_inst_avl_translator.vhd"  -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trkm_translator.vhd" -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trks_translator.vhd" -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_seq_bridge_m0_translator.vhd"               -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_trk_mm_bridge_m0_translator.vhd"            -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_trk_mm_bridge_s0_translator.vhd"            -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_reg_file.sv"                                                  -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_acv_phase_decode.v"                                       -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_acv_wrapper.sv"                                           -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_mgr.sv"                                                   -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_reg_file.v"                                               -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_siii_phase_decode.v"                                      -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_siii_wrapper.sv"                                          -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_sv_phase_decode.v"                                        -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_sv_wrapper.sv"                                            -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_trk_mgr.sv"                                                   -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                   -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"        -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                  -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_sequencer_rst.sv"                                  -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_mem_if_simple_avalon_mm_bridge.sv"                        -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_burst_uncompressor.sv"                             -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_master_agent.sv"                                   -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_slave_agent.sv"                                    -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altera_merlin_traffic_limiter.sv"                                -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_reg_file.sv"                                           -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_acv_phase_decode.v"                                -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_acv_wrapper.sv"                                    -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_mgr.sv"                                            -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_reg_file.v"                                        -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_siii_phase_decode.v"                               -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_siii_wrapper.sv"                                   -work s0                              
vlog     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_sv_phase_decode.v"                                 -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_scc_sv_wrapper.sv"                                     -work s0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/sequencer_trk_mgr.sv"                                            -work s0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_p0.vho"                                                          -work p0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_p0_altdqdqs.vhd"                                                 -work p0                              
vlog -sv "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/mentor/altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2.sv"           -work p0                              
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_pll0.vho"                                                        -work pll0                            
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_pll0_sim_delay.vhd"                                              -work pll0                            
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_0002.vhd"                                                        -work LPDDR2                          
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2.vhd"                                                                                                          
vcom     "D:/intelFPGA_lite/Workspace/SDRAM/pll_sim/pll.vho"                                                                                                                

vcom -2008 -work work {D:/intelFPGA_lite/Workspace/SDRAM/pll.vho}
vlib pll
vmap pll pll
vlog -vlog01compat -work pll +incdir+D:/intelFPGA_lite/Workspace/SDRAM/pll {D:/intelFPGA_lite/Workspace/SDRAM/pll/pll_0002.v}
vcom -2008 -work work {D:/intelFPGA_lite/Workspace/SDRAM/ram_init.vhd}
vcom -2008 -work work {D:/intelFPGA_lite/Workspace/SDRAM/top.vhd}
vcom -2008 -work work {D:/intelFPGA_lite/Workspace/SDRAM/mem_op.vhd}

