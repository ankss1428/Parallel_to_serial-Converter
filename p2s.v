



module p2s(

 
input [15:0] din ,
input clk ,
input rst ,
output reg [4:0] count,
output reg dout ,
output reg fs

);


initial begin
    count=0;
    fs=0;
    end
reg [15:0]temp;



always @ (posedge clk) begin
 if (rst)
 begin
  temp <= 0;
  dout<=0;
  count<=0;
end

   else if (count<16) begin


      dout <= temp[15];
      temp <= temp<<1;   
      count<=count+1;
      fs<=0;
 
end
else begin
       fs<=1;
       count<=0;
       temp<=din;
       dout<=temp[15];
      end
    end  
      
     
endmodule



  

//tb

//module tb();

//reg [15:0] din;
//reg clk;
//reg rst;
//wire dout;
//wire fs;
//wire [4:0] count;
//initial begin
//    clk=1;
//    din=16'h1111;
    
//    end
//p2s p2s_tb ( .din(din), .clk(clk), .rst(rst), .dout(dout),.fs(fs), .count(count) );

  
//  always #10 clk=~clk;
  
//      initial begin
       
//       rst =1'b1;
//       #200
//       rst=1'b0;
      
//       end

//endmodule