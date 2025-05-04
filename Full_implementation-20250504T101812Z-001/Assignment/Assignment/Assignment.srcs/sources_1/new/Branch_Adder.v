`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2025 09:31:39 AM
// Design Name: 
// Module Name: Branch_Adder
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


module Branch_Adder(
    input [31:0] PC,                    
    input [31:0] offset,                 
    output reg [31:0] branch_target     
);

    always @(*) begin
        branch_target <= PC + (offset );  
    end

endmodule
