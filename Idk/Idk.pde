PImage light;
int y;

void setup()
{
  size(800, 600);
  background(128);
  light = loadImage("light.png");
  y = -50;
}

void draw()
{
  light.resize(100, 100);
  image(light, width/2-50, y);  
  y += 1;
  if (y >= height)
  {
    y = -50;
  }

  if (mousePressed)
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed()
{
  if (mouseX >= width/2+50 && mouseY <= height*0.66)
  {
    fill(255, 0, 0);
    textSize(30);

    pushMatrix();
    translate(mouseX, mouseY);
    rotate(20.42);
    text("beware of the ideas of march", 0, 0);
    popMatrix();
  }

  if (mouseX <= width/2-50)
  {
    fill(255);
    textSize(20);

    pushMatrix();
    translate(mouseX, mouseY);
    rotate(279.6);
    text("this is a quiz", 0, 0);
    popMatrix();
  }

  if (mouseX >= width/2+50 && mouseY >= height*0.66)
  {
    textSize(10);
    fill(255, 255, 0);
    text("you found me!", mouseX, mouseY);
  }
}


void keyPressed()
{
  if (key == ' ')
  {
    background(128);
  }
  if (key == '`')
  {
    background(0);
  }
  if (key == '8')
  {
    for (int i = mouseY; i < mouseY + 200; i+=25)
    {
      fill(0, 255, 0);
      rect(mouseX, i, 20, 10);
    }
  }
}
