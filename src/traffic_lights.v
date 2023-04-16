module traffic_lights(
    input clk,
    output reg [2:0] led
);
    
    reg [26:0] counter;

    always @(posedge clk) begin
        if(counter >= 0 && counter < 100_000_000)
            led <= 3'b100; //kırmızı
        else if(counter >= 100_000_000 && counter <= 108_000_000)
            led <= 3'b010; //mavi
        else if(counter >= 108_000_000 && counter <= 163_000_000)
            led <= 3'b001; //yeşil
        else    
            counter <= 0;
        
        counter <= counter + 1;
    
    end





endmodule