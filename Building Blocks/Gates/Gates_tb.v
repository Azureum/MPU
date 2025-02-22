module testbench;
    reg a, b;
    wire xor_out, and_out, nand_out, nor_out, or_out, not_out;

    nand_gate ndg (.a(a), .b(b), .c(nand_out));
    xor_gate xrg (.a(a), .b(b), .c(xor_out));
    and_gate adg (.a(a), .b(b), .c(and_out));
    not_gate ntg (.a(a), .b(not_out));
    nor_gate nrg (.a(a), .b(b), .c(nor_out));
    or_gate org (.a(a), .b(b), .c(or_out));
    
    initial begin
        $monitor("Time=%0t a=%b b=%b | AND=%b OR=%b XOR=%b NOT=%b NAND=%b NOR=%b",
                 $time, a, b, and_out, or_out, xor_out, not_out, nand_out, nor_out);
                 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
endmodule