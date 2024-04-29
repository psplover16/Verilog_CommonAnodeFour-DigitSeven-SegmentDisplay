module aa(clk,seg,way);
input clk;// 
output reg[7:0] seg;
output reg[3:0] way;

reg[11:0]frequency;
always@(posedge clk)frequency=frequency+1;   
always @(posedge frequency[11])  
begin
  case(way)
      4'b0111: way = 4'b1011;
      4'b1011: way = 4'b1101;
      4'b1101: way = 4'b1110;
      4'b1110: way = 4'b0111;
      default: way = 4'b0111;
    endcase
    
    
if(way[3]==0)seg<=8'b01100000; // 1  a/b/c/d/e/f/g/.
if(way[2]==0)seg<=8'b11011010; // 2
if(way[1]==0)seg<=8'b11111110; // 8
if(way[0]==0)seg<=8'b11100111; // . 9


end
endmodule

