// `include "full_adder_data.v"
`include "full_adder_struct.v"

module full_adder_tb ();

    reg a,b,c;
    wire sum,cout;

    // full_adder_data uut(a,b,c,sum,cout);
    full_adder_struct uut(a,b,c,sum,cout);

    initial begin
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        #10;

        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b1;
        c = 1'b1;
        #10;

        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        #10;

        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
        #10;

        a = 1'b1;
        b = 1'b1;
        c = 1'b0;
        #10;

        a = 1'b1;
        b = 1'b1;
        c = 1'b1;
        #10;

        $finish;
    end
    
endmodule