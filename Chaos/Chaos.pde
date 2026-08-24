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
int sqX, sqY, sxSpeed, sySpeed;
int rectX, rectY, rxSpeed, rySpeed;
int triangleY, triangleY2, txSpeed, tySpeed;
float cRotation, c2Rotation;
float translationX;
float translationY;

void setup()
{
  size(800, 600);
  circleW = circleH = 0;
  sqX = sqY = sySpeed = 0;
  sxSpeed = 5;
  rectX = width/2;
  rectY = height/2;
  rxSpeed = rySpeed = 10;
  triangleY = 0;
  triangleY2 = 50;
  txSpeed = tySpeed = 3;
  cRotation = radians(1);
  c2Rotation = radians(5);
  translationX = width/2;
  translationY = height/2;
}

void draw()
{
  background(200);

  // Square
  fill(255, 0, 0);
  rect(sqX, 0, 50, 50);

  sqX += sxSpeed;

  if (sqX >= width - 50 || sqX <= 0)
  {
    turnSquare(true, false);
  }

  // Rectangle
  fill(0, 0, 255);
  pushMatrix();
  translate(rectX, rectY);
  rotate(10);
  rect(0, 0, 50, 100);

  rectX += rxSpeed;
  rectY += rySpeed;

  if (rectX >= width - 50 || rectX <= 0)
  {
    turnRect(true, false);
  }
  if (rectY >= height - 100 || rectY <= 0) {
    turnRect(false, true);
  }

  popMatrix();
  // Triangle
  fill(255, 255, 0);
  triangle(width/2, triangleY, width/2-20, triangleY2, width/2+20, triangleY2);

  triangleY += tySpeed;
  triangleY2 += tySpeed;

  if (triangleY2 >= height || triangleY <= 0)
  {
    turnTriangle(false, true);
  }

  // Circle1
  fill(0, 255, 0);
  pushMatrix();
  translate(translationX, translationY);
  rotate(cRotation);
  ellipse(circleW+60, circleH+60, 50, 50);

  cRotation = cRotation + 0.1;

  popMatrix();
  
  // Circle2
  fill(0, 140, 0);
  pushMatrix();
  translate(translationX, translationY);
  rotate(c2Rotation);
  ellipse(0, -50, 30, 30);

  c2Rotation = c2Rotation + 0.07;

  popMatrix();
}

void turnSquare(boolean turnX, boolean turnY) {
  if (turnX) {
    sxSpeed *= -1;
  }
  if (turnY) {
    sySpeed *= -1;
  }
}
void turnRect(boolean turnX, boolean turnY) {
  if (turnX) {
    rxSpeed *= -1;
  }
  if (turnY) {
    rySpeed *= -1;
  }
}
void turnTriangle(boolean turnX, boolean turnY) {
  if (turnX) {
    txSpeed *= -1;
  }
  if (turnY) {
    tySpeed *= -1;
  }
}
