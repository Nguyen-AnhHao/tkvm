`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2025 09:31:39 AM
// Design Name: 
// Module Name: pc_mux
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


module pc_mux(
    input [31:0] pc_in,       
    input [31:0] pc_branch,   
    input pc_select,          
    output reg[31:0] pc_out  
);
   always @(*) begin
        if (pc_select==1'b0) begin
            pc_out = pc_in;  
        end else begin
            pc_out = pc_branch;      
        end
    end

endmodule
