module half_adder_data (
    a,
    b,
    sum,
    cout
);

    input a,b;
    output sum, cout;

    assign sum = a^b;
    assign cout = a&b;

    initial begin
        $dumpfile ("half_adder_data.vcd");
        $dumpvars (0, half_adder_data);
        #1;
    end
    
endmodule