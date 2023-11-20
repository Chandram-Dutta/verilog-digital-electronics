module full_adder_data (
    a,b,c,sum,cout
);

    input a,b,c;
    output sum,cout;

    assign sum = (a^b^c);
    assign cout = (a&b)|(b&c)|(a&c);
    
    initial begin
        $dumpfile ("full_adder_data.vcd");
        $dumpvars (0, full_adder_data);
        #1;
    end
endmodule