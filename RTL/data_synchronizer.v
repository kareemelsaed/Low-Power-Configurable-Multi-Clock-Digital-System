module data_synchronizer #(
    parameter   num_stages=3,
                bus_width=8
) (
    input   wire    [bus_width-1:0]     unsync_bus,
    input   wire                        bus_enable,
    input   wire                        clk,
    input   wire                        rst,
    output  reg     [bus_width-1:0]     sync_bus,
    output  reg                         enable_pulse  
);
reg     [num_stages-1:0]    ff;
wire                        pulse_gen;
always @(posedge clk or negedge rst) begin
    if(!rst)
    ff <= 'd0;
    else 
        ff <= {bus_enable,ff [num_stages-1:1]};
end//
always @(posedge clk or negedge rst) begin
    if(!rst)
        enable_pulse <= 'd0;
    else
        enable_pulse <= pulse_gen;
end
always @(posedge clk or negedge rst) begin
    if(!rst)
        sync_bus <= 'd0;
    else if (pulse_gen)
        sync_bus <= unsync_bus;
    else
        sync_bus <= sync_bus;
end

assign pulse_gen = (!ff[0]&ff[1]);
    
endmodule