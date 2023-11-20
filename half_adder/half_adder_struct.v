module half_adder_struct (
    a,b,sum,cout
);

    input a,b;
    output sum,cout;

    xor x1(sum,a,b);
    and a1(cout,a,b);

    initial begin
        $dumpfile ("half_adder_struct.vcd");
        $dumpvars (0, half_adder_struct);
        #1;
    end
    
endmodule