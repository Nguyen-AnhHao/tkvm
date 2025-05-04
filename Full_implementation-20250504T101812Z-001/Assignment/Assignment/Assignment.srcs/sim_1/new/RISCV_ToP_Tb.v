`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2025 09:38:10 AM
// Design Name: 
// Module Name: RISCV_ToP_Tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RISCV_ToP_Tb;

    reg clk, rst;
    
    RISCV_Top UUT (
        .clk(clk), 
        .rst(rst)
    );

    // Clock generation
    initial begin
        clk = 0;
    end

    always #50 clk = ~clk; 

    // Reset generation
    initial begin
        rst = 1'b1;
        #50;
        rst = 1'b0; 
        #5200; 
        $finish; 
    end

    
    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, UUT);          
    end

endmodule
