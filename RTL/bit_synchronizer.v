module bit_synchronizer #(
    parameter width=1,
    parameter num_stages =3
)
(
    input   wire    [width-1:0]    ASYNC,
    input   wire                    RST,
    input   wire                    clk,
    output  reg    [width-1:0]      SYNC
);
reg     [num_stages-2:0]    register   [width-1:0];
integer i;

always @(posedge clk or negedge RST ) begin
    if(!RST) 
        for (i = 0 ;i<width ;i=i+1 ) begin
       register[i] <= 'b0;
       SYNC[i] <= 'b0; 
       end
    else
    begin
        for (i = 0 ;i<width ;i=i+1 ) begin
            {register[i],SYNC[i]} <= {ASYNC[i],register[i]};
        end
        
    end
    
end
endmodule