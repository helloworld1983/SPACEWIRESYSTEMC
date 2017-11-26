// ulight_fifo_hps_0.v

// This file was auto-generated from altera_hps_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 17.0 602

`timescale 1 ps / 1 ps
module ulight_fifo_hps_0 #(
		parameter F2S_Width = 0,
		parameter S2F_Width = 1
	) (
		output wire        h2f_rst_n,   //      h2f_reset.reset_n
		input  wire        h2f_axi_clk, //  h2f_axi_clock.clk
		output wire [11:0] h2f_AWID,    // h2f_axi_master.awid
		output wire [29:0] h2f_AWADDR,  //               .awaddr
		output wire [3:0]  h2f_AWLEN,   //               .awlen
		output wire [2:0]  h2f_AWSIZE,  //               .awsize
		output wire [1:0]  h2f_AWBURST, //               .awburst
		output wire [1:0]  h2f_AWLOCK,  //               .awlock
		output wire [3:0]  h2f_AWCACHE, //               .awcache
		output wire [2:0]  h2f_AWPROT,  //               .awprot
		output wire        h2f_AWVALID, //               .awvalid
		input  wire        h2f_AWREADY, //               .awready
		output wire [11:0] h2f_WID,     //               .wid
		output wire [31:0] h2f_WDATA,   //               .wdata
		output wire [3:0]  h2f_WSTRB,   //               .wstrb
		output wire        h2f_WLAST,   //               .wlast
		output wire        h2f_WVALID,  //               .wvalid
		input  wire        h2f_WREADY,  //               .wready
		input  wire [11:0] h2f_BID,     //               .bid
		input  wire [1:0]  h2f_BRESP,   //               .bresp
		input  wire        h2f_BVALID,  //               .bvalid
		output wire        h2f_BREADY,  //               .bready
		output wire [11:0] h2f_ARID,    //               .arid
		output wire [29:0] h2f_ARADDR,  //               .araddr
		output wire [3:0]  h2f_ARLEN,   //               .arlen
		output wire [2:0]  h2f_ARSIZE,  //               .arsize
		output wire [1:0]  h2f_ARBURST, //               .arburst
		output wire [1:0]  h2f_ARLOCK,  //               .arlock
		output wire [3:0]  h2f_ARCACHE, //               .arcache
		output wire [2:0]  h2f_ARPROT,  //               .arprot
		output wire        h2f_ARVALID, //               .arvalid
		input  wire        h2f_ARREADY, //               .arready
		input  wire [11:0] h2f_RID,     //               .rid
		input  wire [31:0] h2f_RDATA,   //               .rdata
		input  wire [1:0]  h2f_RRESP,   //               .rresp
		input  wire        h2f_RLAST,   //               .rlast
		input  wire        h2f_RVALID,  //               .rvalid
		output wire        h2f_RREADY,  //               .rready
		output wire [12:0] mem_a,       //         memory.mem_a
		output wire [2:0]  mem_ba,      //               .mem_ba
		output wire        mem_ck,      //               .mem_ck
		output wire        mem_ck_n,    //               .mem_ck_n
		output wire        mem_cke,     //               .mem_cke
		output wire        mem_cs_n,    //               .mem_cs_n
		output wire        mem_ras_n,   //               .mem_ras_n
		output wire        mem_cas_n,   //               .mem_cas_n
		output wire        mem_we_n,    //               .mem_we_n
		output wire        mem_reset_n, //               .mem_reset_n
		inout  wire [7:0]  mem_dq,      //               .mem_dq
		inout  wire        mem_dqs,     //               .mem_dqs
		inout  wire        mem_dqs_n,   //               .mem_dqs_n
		output wire        mem_odt,     //               .mem_odt
		output wire        mem_dm,      //               .mem_dm
		input  wire        oct_rzqin    //               .oct_rzqin
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (F2S_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					f2s_width_check ( .error(1'b1) );
		end
		if (S2F_Width != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					s2f_width_check ( .error(1'b1) );
		end
	endgenerate

	ulight_fifo_hps_0_fpga_interfaces fpga_interfaces (
		.h2f_rst_n   (h2f_rst_n),   //      h2f_reset.reset_n
		.h2f_axi_clk (h2f_axi_clk), //  h2f_axi_clock.clk
		.h2f_AWID    (h2f_AWID),    // h2f_axi_master.awid
		.h2f_AWADDR  (h2f_AWADDR),  //               .awaddr
		.h2f_AWLEN   (h2f_AWLEN),   //               .awlen
		.h2f_AWSIZE  (h2f_AWSIZE),  //               .awsize
		.h2f_AWBURST (h2f_AWBURST), //               .awburst
		.h2f_AWLOCK  (h2f_AWLOCK),  //               .awlock
		.h2f_AWCACHE (h2f_AWCACHE), //               .awcache
		.h2f_AWPROT  (h2f_AWPROT),  //               .awprot
		.h2f_AWVALID (h2f_AWVALID), //               .awvalid
		.h2f_AWREADY (h2f_AWREADY), //               .awready
		.h2f_WID     (h2f_WID),     //               .wid
		.h2f_WDATA   (h2f_WDATA),   //               .wdata
		.h2f_WSTRB   (h2f_WSTRB),   //               .wstrb
		.h2f_WLAST   (h2f_WLAST),   //               .wlast
		.h2f_WVALID  (h2f_WVALID),  //               .wvalid
		.h2f_WREADY  (h2f_WREADY),  //               .wready
		.h2f_BID     (h2f_BID),     //               .bid
		.h2f_BRESP   (h2f_BRESP),   //               .bresp
		.h2f_BVALID  (h2f_BVALID),  //               .bvalid
		.h2f_BREADY  (h2f_BREADY),  //               .bready
		.h2f_ARID    (h2f_ARID),    //               .arid
		.h2f_ARADDR  (h2f_ARADDR),  //               .araddr
		.h2f_ARLEN   (h2f_ARLEN),   //               .arlen
		.h2f_ARSIZE  (h2f_ARSIZE),  //               .arsize
		.h2f_ARBURST (h2f_ARBURST), //               .arburst
		.h2f_ARLOCK  (h2f_ARLOCK),  //               .arlock
		.h2f_ARCACHE (h2f_ARCACHE), //               .arcache
		.h2f_ARPROT  (h2f_ARPROT),  //               .arprot
		.h2f_ARVALID (h2f_ARVALID), //               .arvalid
		.h2f_ARREADY (h2f_ARREADY), //               .arready
		.h2f_RID     (h2f_RID),     //               .rid
		.h2f_RDATA   (h2f_RDATA),   //               .rdata
		.h2f_RRESP   (h2f_RRESP),   //               .rresp
		.h2f_RLAST   (h2f_RLAST),   //               .rlast
		.h2f_RVALID  (h2f_RVALID),  //               .rvalid
		.h2f_RREADY  (h2f_RREADY)   //               .rready
	);

	ulight_fifo_hps_0_hps_io hps_io (
		.mem_a       (mem_a),       // memory.mem_a
		.mem_ba      (mem_ba),      //       .mem_ba
		.mem_ck      (mem_ck),      //       .mem_ck
		.mem_ck_n    (mem_ck_n),    //       .mem_ck_n
		.mem_cke     (mem_cke),     //       .mem_cke
		.mem_cs_n    (mem_cs_n),    //       .mem_cs_n
		.mem_ras_n   (mem_ras_n),   //       .mem_ras_n
		.mem_cas_n   (mem_cas_n),   //       .mem_cas_n
		.mem_we_n    (mem_we_n),    //       .mem_we_n
		.mem_reset_n (mem_reset_n), //       .mem_reset_n
		.mem_dq      (mem_dq),      //       .mem_dq
		.mem_dqs     (mem_dqs),     //       .mem_dqs
		.mem_dqs_n   (mem_dqs_n),   //       .mem_dqs_n
		.mem_odt     (mem_odt),     //       .mem_odt
		.mem_dm      (mem_dm),      //       .mem_dm
		.oct_rzqin   (oct_rzqin)    //       .oct_rzqin
	);

endmodule
