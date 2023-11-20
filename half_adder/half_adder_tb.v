`include "half_adder_data.v"
// `include "half_adder_struct.v"

module half_adder_tb ();
    reg a,b;
    wire sum,cout;

    half_adder_data uut(a,b,sum,cout);
    // half_adder_struct uut(a,b,sum,cout);

    initial begin
        a = 1'b0;
        b = 1'b0;
        #10;

        a = 1'b1;
        b = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b1;
        #10;

        a = 1'b1;
        b = 1'b1;
        #10;

    $finish;
    end
    
endmodule