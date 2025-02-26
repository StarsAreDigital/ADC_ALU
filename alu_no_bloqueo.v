module alunb (
	input [31:0] A,
	input [31:0] B,
	input [2:0] Sel,
	input CLK,
	output reg [31:0] R,
	output Zflag
);
	//Bandera cero
	assign Zflag = R == 32'b0 ? 1'b1 : 0'b0;
	
	// Asignagión por no bloqueo
	always @(posedge CLK) begin // siempre que CLK tenga un flanco positivo
		case (Sel)
			3'b000: R <= A + B;						// suma
			3'b001: R <= A & B;						// and
			3'b010: R <= A | B;						// or
			3'b011: R <= A * B;						// multiplicacion
			3'b100: R <= A - B;						// resta
			3'b101: R <= A < B ? 32'b1 : 32'b0;		// ternario
			default: R <= 32'b0;					// default 0
		endcase
	end
endmodule
