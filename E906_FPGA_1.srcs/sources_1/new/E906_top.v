//`timescale 1ns / 1ps

module E906_top(
    clk_in1_p,
    clk_in1_n,     
    rstn_fpga,         
    uart_tx_fpga,
    uart_rx_fpga,
    gpio_porta,
    jtg_tdi,
    jtg_tdo,
    jtg_tms,
    jtg_tclk,
    jtg_trst_b,
    jtg_nrst_b
    );
    input clk_in1_p;
    input clk_in1_n;
    input rstn_fpga;
    input uart_rx_fpga;
    output uart_tx_fpga;
    inout[7:0] gpio_porta;
    
    input jtg_tdi;
    input jtg_tclk;
    input jtg_nrst_b;
    input jtg_trst_b;
    input jtg_tms ; 
    output jtg_tdo;
    
    wire clk_soc;
    wire jtg_nrst_b_i=rstn_fpga&jtg_nrst_b;
    wire jtg_trst_b_i=rstn_fpga&jtg_trst_b;
    
 clk_wiz_0 u_clk_wiz_0
  (
  // Clock out ports  
  .clk_out1(clk_soc),
  // Status and control signals               
  .resetn(rstn_fpga), 
 // Clock in ports
  .clk_in1_p(clk_in1_p),
  .clk_in1_n(clk_in1_n)
  );
      //instantiate soc    
soc u_soc(
  .i_pad_clk          ( clk_soc                ),
  .i_pad_uart0_sin    ( uart_rx_fpga           ),
  .o_pad_uart0_sout   ( uart_tx_fpga           ),
  .i_pad_jtg_tclk     ( jtg_tclk                ),
  .i_pad_jtg_trst_b   ( jtg_trst_b_i              ),
  .i_pad_jtg_nrst_b   (jtg_nrst_b_i              ),
  .b_pad_gpio_porta   ( gpio_porta             ),
  .i_pad_jtg_tdi      ( jtg_tdi                ),
  .o_pad_jtg_tdo      ( jtg_tdo                ),
  .i_pad_jtg_tms      ( jtg_tms                ),   
  .i_pad_rst_b        ( rstn_fpga              )
);
endmodule
