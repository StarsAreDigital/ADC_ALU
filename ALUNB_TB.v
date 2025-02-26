module alunb_TB;

    // Declaración de señales
    reg [31:0] A;       // Entrada A
    reg [31:0] B;       // Entrada B
    reg [2:0] Sel;      // Selección de operación
    reg CLK;            // Reloj
    wire [31:0 ]R;             // Resultado
    wire Zflag;         // Bandera de cero

    // Instanciar el módulo alunb
    alunb uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .CLK(CLK),
        .R(R),
        .Zflag(Zflag)
    );

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; 
    end

    initial 
	begin
	
        // Inicializar señales
        A = 32'd5;    // A = 5
        B = 32'd3;    // B = 3
        Sel = 3'b000; // Suma (000)
        
        #10;
		
        Sel = 3'b001; // AND (001)
        #100;
 
        Sel = 3'b010; // OR (010)
        #100;
        
        
        Sel = 3'b011; // Multiplicación (011)
        #100;
        
        
        Sel = 3'b100; // Resta (100)
        #100;
 
        
        Sel = 3'b101; // Comparación ternaria (101)
        #100;
        
        Sel = 3'b101; // Comparación ternaria (101) - Cambiar A y B para prueba positiva
        A = 32'd2;    // A = 2
        B = 32'd3;    // B = 3
        #100;
        
        
        A = 32'd0;    // A = 0
        B = 32'd0;    // B = 0
        Sel = 3'b000; // Suma (000)
        #100;

        $stop;
    end

endmodule

