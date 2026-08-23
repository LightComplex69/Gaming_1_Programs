/*
  Name: Border Patrol
  Author: Rodrick Moore
  Date: 11/2/19
  Description: A circle starts at the upper left corner and moves 
  right along the edges of the window in a clockwise manner.  
  The circle stays on the screen at all times and the movement repeats. 
  The circle should be 100×100 px and should be 50 px from the edge of 
  the window.
*/
int circleY;
int circleX;
boolean right;
boolean left;
boolean up;
boolean down;

void setup()
{
  size(800,600);
  circleY = 50;
  circleX = 50;
  right = true;
  left = false;
  up = false;
  down = false;
}

void draw()
{
  background(155);
   ellipse(circleX,circleY,100,100); 
   
   if(right == true)
   {
     circleX = circleX + 3;
   }
   
   if(left == true)
   {
     circleX = circleX - 3;
   }
   
   if(up == true)
   {
     circleY = circleY - 3;
   }
   
   if(down == true)
   {
     circleY = circleY + 3;
   }
   
   if(circleX > width - 50)
   {
     circleX = 750;
     down = true;
     right = false;
   }
   else if(circleY > height - 50)
   {
     circleY = 550;
     left = true;
     down = false;
   }
   else if(circleX < 0 + 50)
   {
     circleX = 50;
     up = true;
     left = false;
   }
   else if (circleY < 0 + 50)
   {
     circleY = 50;
     right = true;
     up = false;
   } 
   
}
