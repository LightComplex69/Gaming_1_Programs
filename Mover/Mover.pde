/*
  Name: Mover
 Author: Rodrick Moore
 Date: 9/23/19
 Description: Description: A shape moves diagonally from lower left to upper 
 right of the screen.  When the shape gets to the right edge of the screen it 
 “teleports” back to the left side of the screen.  When the shape is in the 
 lower half of the screen the background should be red and when the shape is in 
 the upper half of the screen the background should be green.
 */
int rectWidth;
float rectHeight;
int rectX;
int rectY;

void setup()
{
  size(800, 600); 
  rectWidth = 0;
  rectHeight = 500;
  rectX = 100;
  rectY = 100;
}

void draw()
{
  background(255, 0, 0);
  rect(rectWidth, rectHeight, rectX, rectY);
  rectWidth = rectWidth + 1;
  rectHeight = rectHeight - 0.72;
  if(rectHeight <= 0)
  {
    rectHeight = 500;
    rectWidth = 0;
  }
  if (rectHeight <= height/2 - rectX)
  {
    background(0, 255, 0);
    rect(rectWidth, rectHeight, rectX, rectY);
  }
}
