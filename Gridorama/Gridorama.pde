// Gridorama

float rectX, rectY, rotateSpeed, rotation, tX, tY;
boolean rotate;
void setup()
{
  size(850, 650);
  rotate = false;
  rotation = radians(15);
  rotateSpeed = 0.01;
  tX = width/17*9+25;
  tY = height/13*6-25;
  rectX = width/17*9;
  rectY = height/13*6;
}

void draw()
{
  background(200);
  drawGrid();
  square();
  println(rectX, rectY);
}
void keyPressed()
{
  if (key == CODED)
  {

    if (keyCode == UP)
    {
      if (tY <= 25) {
        tY = tY - 0;

        rotation = rotation + 0.05;
      } else {
        tY = tY - 50;

        rotation = rotation + 0.05;
      }
    } else if (keyCode == DOWN)
    {      
      if (tY >= height - 50) {
        tY = tY - 0;

        rotation = rotation + 0.05;
      } else {
        tY = tY + 50;

        rotation = rotation + 0.05;
      }
    } else if (keyCode == LEFT)
    {
      if (tX <= 25) {
        tX = tX - 0;

        rotation = rotation + 0.05;
      } else {
        tX = tX - 50;

        rotation = rotation + 0.05;
      }
    } else if (keyCode == RIGHT)
    {
      if (tX >= width - 50) {
        tX = tX + 0;

        rotation = rotation + 0.05;
      } else {
        tX = tX + 50;

        rotation = rotation + 0.05;
      }
    }
  }
}

void square()
{
  fill(#EAFF0D);
  pushMatrix();
  translate(tX, tY);
  rotate(rotation);
  rect(-25, -25, 50, 50);
  popMatrix();
}

void drawGrid()
{
  strokeWeight(2);
  for (int x = 0; x < width; x+=50)
  {
    line(x, 0, x, height);
  }
  for (int y = 0; y < height; y+=50)
  {
    line(0, y, width, y);
  }
}
