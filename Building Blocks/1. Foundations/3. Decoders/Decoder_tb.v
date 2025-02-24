module testbench;
    reg enabled;
    reg t1;
    reg [1:0] t2;
    reg [2:0] t3;
    wire [1:0] out1;
    wire [3:0] out2;
    wire [7:0] out3, out3_en;

    decoder_one do (.a(t1), .out(out1));
    decoder_two dt (.a(t2), .out(out2));
    decoder_three dth (.a(t3), .out(out3));
    enabled_decoder_three edth (.a(t3), .enabled(enabled), .out(out3_en));

    initial begin 
        $display("Testing 1:2 Decoder:");
        $monitor("Time: %t | t1: %b | out1: %b", $time, t1, out1);
        t1 = 0; #10;
        t1 = 1; #10;
        $monitor;

        $display("\nTesting 2:4 Decoder:");
        $monitor("Time: %t | t2: %b | out2: %b", $time, t2, out2);
        t2 = 2'b00; #10;
        t2 = 2'b01; #10;
        t2 = 2'b10; #10;
        t2 = 2'b11; #10;
        $monitor;

        $display("\nTesting 3:8 Decoder:");
        $monitor("Time: %t | t3: %b | out3: %b", $time, t3, out3);
        t3 = 3'b000; #10;
        t3 = 3'b001; #10;
        t3 = 3'b010; #10;
        t3 = 3'b011; #10;
        t3 = 3'b100; #10;
        t3 = 3'b101; #10;
        t3 = 3'b110; #10;
        t3 = 3'b111; #10;
        $monitor;

        $display("\nTesting Enabled 3:8 Decoder:");
        $monitor("Time: %t |enabled %b | t3: %b | out3: %b", $time, enabled, t3, out3_en);
        t3 = 3'b000; enabled = 0; #10;
        t3 = 3'b000; enabled = 1; #10;
        t3 = 3'b001; #10;
        t3 = 3'b010; #10;
        t3 = 3'b011; #10;
        t3 = 3'b100; #10;
        t3 = 3'b101; #10;
        t3 = 3'b110; #10;
        t3 = 3'b111; #10;
        $finish;
    end
endmodule