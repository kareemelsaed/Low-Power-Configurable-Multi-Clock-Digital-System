module clock_divider #(
    parameter width=5
) (
    input   wire    [width-1:0]     I_div_ratio,
    input   wire                    I_ref_clk,
    input   wire                    I_clk_en,
    input   wire                    I_rst_n,
    output  wire                    o_div_clk                    
);

reg     [width-1:0]     count;
//integer                 i;

always @(posedge I_ref_clk or negedge I_rst_n) begin
    if (!I_rst_n)
    begin
       count <= 'd0 ; 
    end
    else if (!I_clk_en)
        count <= 'd0 ;
    else if (I_clk_en)
    begin
        count <= count + 'b1 ;
        if(count == I_div_ratio)
        count <= 'd1 ;
    end
    
end
assign o_div_clk = (count != 'd0 && (count <= (I_div_ratio/2))) ? 1'b1 : 1'b0 ;
    
endmodule