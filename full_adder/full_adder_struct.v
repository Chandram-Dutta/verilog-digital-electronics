module full_adder_struct (
    a,b,c,sum,cout
);
    
    input a,b,c;
    output sum,cout;
    wire w1,w2,w3,w4,w5;

    xor x1(w1,a,b);
    xor x2(sum,w1,c);

    and a1(w2,a,b);
    and a2(w3,a,c);
    and a3(w4,b,c);

    or o1(w5,w2,w3);
    or o2(cout,w5,w4);

    initial begin
        $dumpfile ("full_adder_struct.vcd");
        $dumpvars (0, full_adder_struct);
        #1;
    end

endmodule