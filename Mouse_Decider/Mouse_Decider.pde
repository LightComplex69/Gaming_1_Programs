/*
  Name: MouseDecider
 Author: Rodrick Moore
 Date: 11/11/19
 Desc:  Using the following code define the appropriate function(s) 
 so that the code runs.  No modifications to the draw function should be made.
 */
boolean mouseOnLeft;

void setup()
{
  size(800, 600);
  mouseOnLeft = false;
}

void draw()
{

  if (isMouseOnLeft(mouseX) == true)
  {
    background(255);
  } else
  {
    background(0);
  }
  stroke(255, 0, 0);
  strokeWeight(20);
  line(width/2, 0, width/2, height);
}

boolean isMouseOnLeft(float mouseX)
{
  if (mouseX <= width/2)
  {
    return true;
  } else
  {
    return false;
  }
}
