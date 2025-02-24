module testbench;
    reg [7:0] a, b, c, d, e, f, g, h;
    reg s1;
    reg [1:0] s2;
    reg[2:0] s3;
    wire [7:0] muxTwoOut, muxFourOut, muxEightOut;
    //Instantiate the multiplexers
    mux_two mxt(.a(a), .b(b), .s(s1), .out(muxTwoOut));
    mux_four mxf(.a(a), .b(b), .c(c), .d(d), .s(s2), .out(muxFourOut));
    mux_eight mxe(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),  .s(s3), .out(muxEightOut));

    // Start testbench
    initial begin
        // Bunch of "random" bytes
        a = 8'b00000000; b = 8'b11111111; c = 8'b10101010; d = 8'b01010101;
        e = 8'b11001100; f = 8'b00110011; g = 8'b11100000; h = 8'b00001111;
        #10;
        
        $display("2:1 Mux Testing:");
        $monitor("Time: %0t | a: %b, b: %b| s1: %b | muxTwoOut: %b", $time, a, b, s1, muxTwoOut);
        s1 = 0; #10;
        s1 = 1; #10;
        $monitor; // clears the monitor

        $display("\n4:1 Mux Testing:");
        $monitor("Time: %0t | a: %b, b: %b, c: %b, d: %b| s2: %b | muxFourOut: %b", $time, a, b, c, d, s2, muxFourOut);
        s2 = 2'b00; #10;
        s2 = 2'b01; #10;
        s2 = 2'b10; #10;
        s2 = 2'b11; #10;
        $monitor;
        
        $display("\n8:1 Mux testing: ");
        $monitor("Time: %0t | a: %b, b: %b, c: %b, d: %b, e: %b, f: %b, g: %b, h: %b| s3: %b | muxEightOut: %b", $time, a, b, c, d, e, f, g, h, s3, muxEightOut);
        s3 = 3'b000; #10;
        s3 = 3'b001; #10;
        s3 = 3'b010; #10;
        s3 = 3'b011; #10;
        s3 = 3'b100; #10;
        s3 = 3'b101; #10;
        s3 = 3'b110; #10;
        s3 = 3'b111; #10;
        $finish
    end
endmodule