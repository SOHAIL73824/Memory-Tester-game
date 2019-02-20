// ECE6370
// Author: Manasa Tempalli 5355
//Seven segment display mapping 
module seven_seg(seg_in, seg_out);
 //declaring inputs and outputs
 input[3:0] seg_in;
 output[6:0] seg_out;
 reg[6:0] seg_out;
 
 //loop for sensitivity list
 always @ (seg_in)
 begin //mapping inputs to the display leds begins
//'0' turns LED On and '1' turns LED Off
  case(seg_in)
   4'h0:
   begin
    seg_out=7'b0000001;
    //displays '0'
   end
   4'h1:
   begin
    seg_out=7'b1001111;
    //displays '1'
   end
   4'h2:
   begin
    seg_out=7'b0010010;
    //displays '2'
   end
   4'h3:
   begin
    seg_out=7'b0000110;
    //displays '3'
   end
   4'h4:
   begin
    seg_out=7'B1001100;
    //displays '4'
   end
   4'h5:
   begin
    seg_out=7'b0100100;
    //displays '5'
   end
   4'h6:
   begin
    seg_out=7'b0100000;
    //displays '6'
   end
   4'h7:
   begin
    seg_out=7'b0001111;
    //displays '7'
   end
   4'h8:
   begin
    seg_out=7'b0000000;
    //displays '8'
   end
   4'h9:
   begin
    seg_out=7'b0000100;
    //displays '9'
   end
   4'hA:
   begin
    seg_out=7'b0000010;
    //displays 'a'
   end
   4'hB:
   begin
    seg_out=7'b1100000;
    //displays 'b'
   end
   4'hC:
   begin
    seg_out=7'b0110001;
    //displays 'C'
   end
   4'hD:
   begin
    seg_out=7'b1000010;
    //displays 'd'
   end
   4'hE:
   begin
    seg_out=7'b0010000;
    //displays 'e'
   end
   4'hF:
   begin
    seg_out=7'b0111000;
    //displays 'F'
   end
   default:
   begin
    seg_out=7'b1111111;
   end
  endcase
 end
endmodule
