// GridBox

float rotate, rotate2;
void setup()
{
 size(800,600); 
 rotate = radians(15);
 rotate2 = radians(-15);
}

void draw()
{
  background(0);
  redSquares();
  greenSquares();
}

void redSquares()
{
 for(int rectX = 10; rectX < width; rectX += 50)
 {
   for(int rectY = height/50; rectY < height; rectY += 100)
   {
   pushMatrix();
   translate(rectX+15,rectY+15);
   rotate(rotate);
   fill(255,0,0);
   rect(-15,-15,30,30);
   popMatrix();
   }
 }
 rotate = rotate + 0.05;
}

void greenSquares()
{ for(int rectX2 = 10; rectX2 < width; rectX2 += 50)
 {
   for(int rectY2 = height/50 * 5; rectY2 < height; rectY2 += 100)
   {
   pushMatrix();
   translate(rectX2+15, rectY2+15);
   rotate(rotate2);
   fill(0,255,0);
   rect(-15, -15,30,30);
   popMatrix();
   }
 }
  rotate2 = rotate2 - 0.05;
}
