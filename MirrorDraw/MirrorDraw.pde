// MirrorDraw

float mX, mY, pmX, pmY, distance, previousD;


void setup()
{
  size(800, 600);
  splitScreen();
}

void draw()
{
  if (mousePressed)
  {
    if (mouseX >= width/2)
    {
      stroke(0);
      strokeWeight(5);
      line(mouseX, mouseY, pmouseX, pmouseY);
      /*mX = map(mouseX, width/2, width, 0, width/2);
      pmX = map(pmouseX, width/2, width, 0, width/2);
      stroke(255);
      pushMatrix();
      translate(width/2, 0);
      line(-mX, mouseY, -pmX, pmouseY);
      popMatrix();*/
    } else
    {
      stroke(255);
      strokeWeight(5);
      line(mouseX, mouseY, pmouseX, pmouseY);
      mX = map(mouseX, width/2, width, 0, width/2);
      pmX = map(pmouseX, width/2, width, 0, width/2);
      stroke(0);
      pushMatrix();
      translate(width/2, 0);
      line(-mX, mouseY, -pmX, pmouseY);
      popMatrix();
    }
  }

  println("Distance = " + distance);
}

void splitScreen()
{
  fill(0);
  noStroke();
  rect(0, 0, width/2, height);

  fill(255);
  rect(width/2, 0, width, height);
}

void keyPressed()
{
  if (key == ' ')
  {
    splitScreen();
  }
}
