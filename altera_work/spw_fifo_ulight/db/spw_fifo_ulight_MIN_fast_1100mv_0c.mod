


INPUT FPGA_CLK1_50;
INPUT KEY[1];
INPUT din_a;
INPUT sin_a;
INPUT KEY[0];
INPUT din_a(n);
INPUT sin_a(n);
OUTPUT dout_a;
OUTPUT dout_a(n);
OUTPUT sout_a;
OUTPUT sout_a(n);
OUTPUT LED[5];
OUTPUT LED[7];
OUTPUT LED[0];
OUTPUT LED[1];
OUTPUT LED[2];
OUTPUT LED[3];
OUTPUT LED[4];
OUTPUT LED[6];

/*Arc definitions start here*/
pos_KEY[1]__FPGA_CLK1_50__setup:		SETUP (POSEDGE) KEY[1] FPGA_CLK1_50 ;
pos_sin_a__clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_100_reduced_i__setup:		SETUP (POSEDGE) sin_a clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_100_reduced_i ;
pos_KEY[1]__FPGA_CLK1_50__hold:		HOLD (POSEDGE) KEY[1] FPGA_CLK1_50 ;
pos_sin_a__clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_100_reduced_i__hold:		HOLD (POSEDGE) sin_a clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_100_reduced_i ;
pos_FPGA_CLK1_50__LED[0]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[0] ;
pos_FPGA_CLK1_50__LED[1]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[1] ;
pos_FPGA_CLK1_50__LED[2]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[2] ;
pos_FPGA_CLK1_50__LED[3]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[3] ;
pos_FPGA_CLK1_50__LED[4]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[4] ;
pos_FPGA_CLK1_50__LED[5]__delay:		DELAY (POSEDGE) FPGA_CLK1_50 LED[5] ;
pos_clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_reduced_i__sout_a__delay:		DELAY (POSEDGE) clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_reduced_i sout_a ;
pos_clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_reduced_i__sout_a(n)__delay:		DELAY (POSEDGE) clock_reduce:R_400_to_2_5_10_100_200_300MHZ|clk_reduced_i sout_a(n) ;
pos_spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e__dout_a__delay:		DELAY (POSEDGE) spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e dout_a ;
pos_spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e__dout_a__delay:		DELAY (POSEDGE) spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e dout_a ;
pos_spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e__dout_a(n)__delay:		DELAY (POSEDGE) spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e dout_a(n) ;
pos_spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e__dout_a(n)__delay:		DELAY (POSEDGE) spw_ulight_con_top_x:A_SPW_TOP|top_spw_ultra_light:SPW|TX_SPW:TX|tx_dout_e dout_a(n) ;

ENDMODEL
