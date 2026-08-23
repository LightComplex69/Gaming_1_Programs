/*
  Name: Guider
  Author: Rodrick Moore
  Date: 10/2/19
  Description: An circle starts at the center of the screen.  
  It only moves along its horizontal axis.  If the mouse is to the 
  left of the circle the circle moves towards the left.  If the Mouse is 
  on the right the circle moves right.  The ellipse should never leave the 
  screen and should only move at a maximum of 5 pixels per step.  If the
  mouse is on the upper half of the screen the ellipse should be green 
  otherwise it should be yellow.
*/
float circleX;

void setup()
{
  size(800,600);
  circleX = width/2;
}

void draw()
{
  background(200);
  ellipse(circleX,height/2,50,50);
  
    
  if(mouseY <= height/2)
  {
    fill(0,255,0);
  }
  else
  {
    fill(#F2FF3E);
  }
  
  if(circleX <= 0)
  {
    circleX = 0;
  }
  
  if(circleX >= width)
  {
    circleX = width;
  }
  
  if(mouseX <= circleX)
  {
    circleX = circleX - 2;
  }
  
  if(mouseX >= circleX)
  {
    circleX = circleX + 2;  
  }

  
}
