int lineY, slineY;

void setup()
{
  size(800, 600);
  lineY = slineY = height/2;
}

void draw()
{
  background(255, 0, 0);
  strokeWeight(5);
  line(0, height/2, width, lineY-5);
  if (lineY <= 0)
  {
    lineY = height/2-5;
  } else
  {
    lineY -= 5;
  }

  line(0, height/2, width, slineY+5);
  if (slineY >= height)
  {
    slineY = height/2+5;
  } else
  {
    slineY += 5;
  }
}
