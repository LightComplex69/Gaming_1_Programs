/* 
  Name: Chaos  
  Author: Rodrick Moore
  Date: 10/3/19
  Decription: 5 different shapes should move in, at least, 4 different 
  manners on the screen.  At least one movement should be non-linear 
  (e.g. zig zags are linear!).  The shapes should never leave the screen 
  and each should be of distinct color.
*/
int circleW;
int circleH;
int rectX;
int rectY;
int triangleY;
int triangleY2;
boolean turnaround;
float cRotation;
float translationX;
float translationY;

void setup()
{
   size(800,600);
   circleW = 0;
   circleH = 0;
   rectX = 0;
   rectY = 0;
   triangleY = 0;
   triangleY2 = 50;
   turnaround = false;
   cRotation = radians(1);
   translationX = width/2;
   translationY = height/2;
}

void draw()
{
 background(200);
 
 
  rect(rectX,rectY,50,50);
  
  if (rectX >= width - 50)
  {
    turnaround = true;
  }

  if (turnaround == false)
  {
    rectX = rectX + 5;
  }
  
  if(turnaround == true)
  {
    rectX = rectX - 5;
  }
  
  if(rectX <= 0)
  {
    turnaround = false;
  }
  
  triangle(width/2,triangleY,width/2-20,triangleY2,width/2+20,triangleY2);
    
  if (triangleY2 >= height)
  {
    turnaround = true;
  }

  if (turnaround == false)
  {
    triangleY = triangleY + 5;
    triangleY2 = triangleY2 + 5;
  }
  
  if(turnaround == true)
  {
    triangleY = triangleY - 5;
    triangleY2 = triangleY2 - 5;
  }
  
  if(triangleY <= 0)
  {
    turnaround = false;
  }
  
  
 pushMatrix();
 translate(translationX,translationY);
 rotate(cRotation);
 ellipse(circleW+60,circleH+60,50,50);

 cRotation = cRotation + 0.1;
 
 if(cRotation == cRotation+1)
 {
   cRotation = radians(1);
 }
 popMatrix();
}
