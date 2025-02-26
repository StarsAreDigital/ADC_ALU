module ALU (
	input [31:0] A,
	input [31:0] B,
	input [2:0] Sel,
	input CLK,
	output reg R,
	output Zflag
);
	//Bandera cero
	assign Zflag = R == 32'b0 ? 1'b1 : 0'b0;
	
	// Asignagión por no bloqueo
	always @(posedge CLK) begin
		case (Sel) begin
			3'b000: R <= A + B;
			3'b001: R <= A & B;
			3'b010: R <= A | B;
			3'b011: R <= A * B;
			3'b100: R <= A - B;
			3'b101: R <= A < B ? 32'b1 : 32'b0;
			default: R <= A + B;
		endcase
	end
endmodule
