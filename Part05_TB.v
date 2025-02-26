`timescale 1ns/1ns
module tb_alub; 
    // Entradas del módulo alub
    reg [31:0] A; 
    reg [31:0] B; 
    reg [2:0] sel; 

    // Salidas del módulo alub
    wire [31:0] R; 
    wire Z; 

    // Instanciamos el módulo alub
    alub uut (
        .A(A),
        .B(B),
        .sel(sel),
        .R(R),
        .Z(Z)
    );

    // Proceso de test
    initial begin

        // Test 1: Suma
        A = 32'h00000010; // 16
        B = 32'h00000020; // 32
        sel = 3'b001;     // Operación: A + B
        #10;
        
        // Test 2: AND
        A = 32'h00000001; // 0xFFFF0000
        B = 32'h0000000F; // 0x0000FFFF
        sel = 3'b010;     // Operación: A & B
        #10;
        
        // Test 3: OR
        A = 32'h00000008; // 0xFFFF0000
        B = 32'h000000FF; // 0x0000FFFF
        sel = 3'b011;     // Operación: A | B
        #10;

        // Test 4: Multiplicación
        A = 32'h00000004; // 4
        B = 32'h00000005; // 5
        sel = 3'b100;     // Operación: A * B
        #10;
        
        // Test 5: Resta
        A = 32'h00000010; // 16
        B = 32'h00000005; // 5
        sel = 3'b101;     // Operación: A - B
        #10;
        
        // Test 6: Comparación (A < B)
        A = 32'h00000005; // 5
        B = 32'h00000010; // 16
        sel = 3'b110;     // Operación: A < B
        #10;
        
        // Test 7: Caso por defecto
        A = 32'hFFFFFFFF; // 0xFFFFFFFF
        B = 32'hFFFFFFFF; // 0xFFFFFFFF
        sel = 3'b111;     // Operación por defecto (0)
        #10;

    end
endmodule

