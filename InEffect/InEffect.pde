// InEffect

float distance;
float cS;
void setup()
{
  size(800, 600);
  cS = distance;
}

void draw()
{
  background(128);

  drawCircles();
  println(distance);
}

void drawCircles()
{
  for (int cX = 10; cX < width; cX += 20)
  {
    for (int cY = 10; cY < height; cY += 20)
    {
      noStroke();
      fill(255, 0, 0, 100);
      distance = dist(cX, cY, mouseX, mouseY);
      if (distance < 50)
      {
        ellipse(cX, cY, distance/5, distance/5);
      } else if (distance > 100)
      {
        ellipse(cX, cY, distance/10, distance/10);
      } else if (distance <= 100 && distance > 40)
      {
        ellipse(cX, cY, 10,10);
      } else
      {
        ellipse(cX, cY, 20, 20);
      }
    }
  }
}
