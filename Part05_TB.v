`timescale 1ns/1ns
module tb_alub; 
 
    reg [31:0] A; 
    reg [31:0] B; 
    reg [2:0] sel; 

    wire [31:0] R; 
    wire Z; 

    alub uut (.A(A), .B(B), .sel(sel), .R(R), .Z(Z));

    initial begin

        A = 32'h00000010; 
        B = 32'h00000020; 
        sel = 3'b001;     
        #10;
        
        // Test 2: AND
        A = 32'h00000001; 
        B = 32'h0000000F; 
        sel = 3'b010;     
        #10;
        
        // Test 3: OR
        A = 32'h00000008; 
        B = 32'h000000FF; 
        sel = 3'b011;     
        #10;

        // Test 4: Multiplicación
        A = 32'h00000004; 
        B = 32'h00000005;
        sel = 3'b100;    
        #10;
        
        // Test 5: Resta
        A = 32'h00000010; 
        B = 32'h00000005; 
        sel = 3'b101;     
        #10;
        
        // Test 6: Comparación (A < B)
        A = 32'h00000005; 
        B = 32'h00000010; 
        sel = 3'b110;    
        #10;
        
        // Test 7: Caso por defecto
        A = 32'h0000000F; 
        B = 32'h0000FFF; 
        sel = 3'b111;     // Operación por defecto (0)
        #10;

    end
endmodule

