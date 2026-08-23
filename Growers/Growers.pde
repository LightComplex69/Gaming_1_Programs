/*
  Name: Growers
 Author: Rodrick Moore
 Date: 9/24/19
 Description: A 20 pixel square is centered on the screen and grows outward.  
 Upon reaching the edge of the screen it shrinks back to 20 pixels and starts 
 growing again.  In the center two lines begin as a point and grow outward as 
 well.  One line is horizontal and the second is vertical.  Upon reaching the 
 edge of the screen they reset back to the center. The lines and square are all 
 different colors.
 */
float vLineY;
float vLineY2;
float hLineX;
float hLineX2;
float rectW;
float rectH;
float rectX;
float rectY;

void setup()
{
  size(800,600);
  background(100);
  vLineY = height/2;
  vLineY2 = height/2;
  hLineX = width/2;
  hLineX2 = width/2;
  rectW = 20;
  rectH = 20;
  rectX = width/2;
  rectY = height/2;
}

void draw()
{
    
  stroke(0,0,255);
  fill(#F4F536,180);
  background(100);
  rect(rectX,rectY,rectW,rectH);         // rectangle
  rectW = rectW + 1.76;
  rectH = rectH + 1.3;
  rectX = rectX - 0.9;
  rectY = rectY - 0.67;
  if(rectX <= 0)
  {
    rectW = 20;
    rectH = 20;
    rectX = width/2;
    rectY = height/2;
    rect(rectX,rectY,rectW,rectH);
  }
  
  stroke(255,0,0);
  line(width/2,vLineY,width/2,vLineY2);   // vertical line
  vLineY = vLineY - 1; 
  vLineY2 = vLineY2 + 1;
  if(vLineY <= 0 || vLineY2 >= height)
  {
    vLineY = height/2;
    vLineY2 = height/2; 
    line(width/2,vLineY,width/2,vLineY2);
  }
  
  stroke(0,255,0);
  line(hLineX,height/2,hLineX2,height/2);  // horizontal line
  hLineX = hLineX - 1;
  hLineX2 = hLineX2 + 1;
  if(hLineX <= 0 || hLineX2 >= width)
  {
    hLineX = width/2;
    hLineX2 = width/2;
    line(hLineX,height/2,hLineX2,height/2);
  }

}
