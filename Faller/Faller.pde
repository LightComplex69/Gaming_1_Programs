/*
  Name: Faller
  Author: ROdrick Moore
  Date: 9/24/19
  Description: Three different shapes begin in at the top of the screen.  
  Each shape is a different color and falls towards the bottom of the screen.  
  The background of each column is the complementary color of the shape color.  
  Each shape falls at a different speed.  As the shapes fall they fade away and 
  when they reach the bottom the process starts anew and the shape is visible and 
  starts again at the top.
*/
float circleY;
float circleT;
float rectY;
float rectT;
float triangleY;
float triangleT;

void setup()
{
  size(800,600);
  circleY = -50;
  circleT = 255;
  rectY = -50;
  rectT = 255;
  triangleY = -50;
  triangleT = 255;
}

void draw()
{
  background(150);
  stroke(0);
  fill(#5589F7);
  rect(0,0,width/3,height);       // boundaries
  
  fill(#ED940E);
  rect(width/3,0,width/3*2,height);
  
  fill(#FF4343);
  rect(width/3*2,0,width,height);
  
  noStroke();
  fill(#FFA024,circleT);
  ellipse(width/6,circleY,50,50);      // circle
  circleY = circleY + 2;
  circleT = circleT - 0.87;
  if(circleY >= height)
  {
    circleY = -50;
    circleT = 255;
  }
  
  fill(#89CBF2,rectT);
  rect(width/2-20,rectY,50,50);        // square
  rectY = rectY + 3;
  rectT = rectT - 1.2;
  if(rectY >= height)
  {
    rectY = -50;
    rectT = 255;
  }
  
  fill(#56FF31,triangleT);
  triangle(width-125,triangleY,720,triangleY + 50,620,triangleY + 50);  // triangle
  triangleY += 5;
  triangleT = triangleT - 2.5;
  if(triangleY + 50 >= height)
  {
    triangleY = -50;
    triangleT = 255;
  }
}
