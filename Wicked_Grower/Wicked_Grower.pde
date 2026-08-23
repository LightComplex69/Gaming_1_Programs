float rectX, rectY, rectS, rectS2, distanceX, distanceY;

void setup()
{
 size(800,600); 
 rectX = width/2-10;
 rectY = height/2-10;
 rectS = rectS2 = 50;
 distanceX = dist(rectX,rectX,0,0);
 distanceY = dist(rectY,rectY,0,0);
}

void draw()
{
  background(128);
  noStroke();
  fill(255,0,0);
  rect(rectX,rectY,rectS,rectS2);
  
  rectX = rectX - distanceX/500;
  rectY -= distanceY/500;
  rectS = rectS + distanceX/263;
  rectS2 += distanceY/263;
}
