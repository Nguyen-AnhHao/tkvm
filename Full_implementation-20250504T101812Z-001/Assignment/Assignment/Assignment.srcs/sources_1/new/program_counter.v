`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2025 09:27:37 AM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
    input clk,                
    input rst,                
    input [31:0] pc_in,       
    output reg [31:0] pc_out 
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_out <= 32'b00;  
        end else begin
            pc_out <= pc_in;  
        end
    end

endmodule