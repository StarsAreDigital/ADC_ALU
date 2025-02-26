
module alub (
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] R,
	output reg Z
	);


	always @ (*) 
	
	begin
		case(*)
		3'b001: initial
		R = A + B;
		
		end
		3'b010: initial
		R = A & B;
		end
		3'b011: initial
		R = A | B;
		end
		3'b100: initial
		R = A * B;
		end
		3'b101: initial
		R = A - B;
		end
		3'b110: initial
		R = A<B?1:0;
		end
		default: R = 32'd0;
		endcase
		
	end
	assign Z == (R=0);
		
	//PRUEBA
endmodule
