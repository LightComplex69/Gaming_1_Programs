/*
  Name: SplitMover
  Author: Rodrick Moore
  Date: 9/23/19
  Description: Four different shapes are moving in four 
  different colored quadrants.  Each shape moves in a different manner as 
  described below.  Each shape teleports to the opposite edge when it reaches 
  its far edge.  Each shape is bound to its quadrant.
    Top left quadrant: Vertically Down
    Top right quadrant: Horizontally Left to right
    Bottom right quadrant: Horizontally right to left
    Bottom left quadrant: Vertically Up
*/
int transparency;
float circleHeight;
float rectWidth;
float ovalWidth;
float triangleHeight;
float triangleHeight2;
float triangleHeight3;

void setup()
{
  size(800,600);
  transparency = 255;
  circleHeight = height/4;
  rectWidth = width-200;
  ovalWidth = width-200;
  triangleHeight = height-200;
  triangleHeight2 = height-100;
  triangleHeight3 = height-100;
}

void draw()
{
  background(200);
  fill(#4EF26B);
  rect(0,0,width/2,height/2);   // coordinate lines
  fill(#C953EA);
  rect(0,height/2,width/2,height/2);
  fill(#F5E24D);
  rect(width/2,0,width,height/2);
  fill(#F53E3E);
  rect(width/2,height/2,width,height);

  fill(30,transparency);
  ellipse(width/4,circleHeight,50,50);  // circle
  circleHeight = circleHeight + 2;
  transparency = transparency - 1;
  
  if(circleHeight >= height-323)
  {
    circleHeight = 0;
    ellipse(width/4,circleHeight,50,50);
  }
  
  rect(rectWidth,height/4,50,50);   // rectangle
  rectWidth = rectWidth + 2;
  
  if(rectWidth >= width)
  {
    rectWidth = width/2;
    rect(rectWidth,height/4,50,50);
  }
  
  triangle(width/4,triangleHeight,width-660,triangleHeight2,width-550,triangleHeight3); // triangle
  triangleHeight = triangleHeight - 2;
  triangleHeight2 = triangleHeight2 - 2;
  triangleHeight3 = triangleHeight3 - 2;
  if(triangleHeight <= height/2)
  {
    triangleHeight = height-100;
    triangleHeight2 = height;
    triangleHeight3 = height;
  }
  
  ellipse(ovalWidth,height-150,50,120);  // oval
  ovalWidth = ovalWidth - 2;
  if(ovalWidth <= width-378)
  {
    ovalWidth = width;
    ellipse(ovalWidth,height-150,50,120);
  }
}
