// TargetStop

int circleX;
float d;

void setup()
{
  size(800, 600);
  circleX = width/2;
}

void draw()
{
  background(128);
  circle();
  crossHair();
  println(d);
}

void crossHair()
{
  for (int x = mouseX; x < width + 50; x += 10)
  {

    fill(0);
    ellipse(x, mouseY, 10, 10);
  }

  for (int x2 = mouseX; x2 > 0 - 50; x2 -= 10)
  {

    fill(0);
    ellipse(x2, mouseY, 10, 10);
  }

  for (int y = mouseY; y < height + 50; y += 10) 
  {
    fill(0);
    ellipse(mouseX, y, 10, 10);
  }

  for (int y = mouseY; y > 0 - 50; y -= 10)
  {

    fill(0);
    ellipse(mouseX, y, 10, 10);
  }
}

void circle()
{
  d = dist(circleX, height/2, mouseX, mouseY);
  if (d <= 25)
  {
    fill(0, 255, 0);
    circleX = circleX + 0;
  } else
  {
    fill(255);
    circleX = circleX + 5;
  }

  ellipse(circleX, height/2, 50, 50);

  if (circleX >= width + 50)
  {
    circleX = -50;
  }
}
