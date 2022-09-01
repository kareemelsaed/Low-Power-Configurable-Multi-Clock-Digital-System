module RST_synchronizer #(
    parameter num_stages =3
)
(
    input   wire    RST,
    input   wire    clk,
    output  wire     SYNC_RST
);
reg     [num_stages-1:0]    ff;

always @(posedge clk or negedge RST ) begin
    if(!RST) 
       ff <= 'd0;
       else 
       begin
           ff <= {1'b1,ff [num_stages-1:1]};
       end
end
assign SYNC_RST = ff[0];
endmodule