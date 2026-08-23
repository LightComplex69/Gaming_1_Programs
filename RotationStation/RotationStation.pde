float rotation;
float rotation2;
float counterRotate;
float textX;

void setup()
{
  size(800, 600);
  textX = width/80;
  rotation = radians(1);
  rotation2 = radians(1);
  counterRotate = -PI/2;
}

void draw()
{
  background(128);
  drawLeftShape();
  drawRightShape();
  drawCenterShape();
}

void drawLeftShape()
{
  textSize(40);
  text("Rodrick", textX, height/10);
  if(textX >= width + 10)
  {
    textX = -200;
  }else
  {
    textX = textX + 5;
  }
  fill(0, 0, 255);
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotation);
  rect(200, 50, 20, 50);

  rotation = rotation + 0.05;

  popMatrix();
}

void drawCenterShape()
{
  fill(0, 255, 0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(counterRotate);
  rect(-50, 50, 20, 50);
  counterRotate = counterRotate - 0.05;

  popMatrix();
}

void drawRightShape()
{
  fill(255, 0, 0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotation2);
  rect(-200, 50, 50, 100);

  rotation2 = rotation2 + 0.05;

  popMatrix();
}
