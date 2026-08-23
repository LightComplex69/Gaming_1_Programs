/*
  Name: Bouncer
 Author: Rodrick Moore
 Date: 10/8/19
 Description:  A yellow circle moves around a blue screen diagonally.
 The circle has your first name initial inside of it in black text.
 When the circle touches any edge of the screen it will bounce off of
 the edge to stay in the screen.  When you press the space bar the circle
 will also bounce anywhere on the screen.  When the mouse is pressed the
 color of the window will toggle between blue and green.
 */
int rectX, rectY, rxSpeed, rySpeed, winColor;

void setup()
{
  size(800, 600);
  rectX = width/2;
  rectY = height/2;
  rxSpeed = 6;
  rySpeed = 4;
  winColor = #61B465;
}

void draw()
{
  background(winColor);
  fill(#DEF25F);
  ellipse(rectX, rectY, 50, 50);

  rectX += rxSpeed;
  rectY += rySpeed;

  if (rectX >= width - 25 || rectX <= 25)
  {
    turnX();
  }
  if (rectY >= height -25 || rectY <= 25){
    turnY();
  }
}


void keyPressed()
{
  if (random(2) % 2 == 0) {
    turnY();
  } else {
    turnX();
  }
}

void mousePressed(){
  if(winColor == #61B465) {
    winColor = #6191B4;
  } else {
   winColor = #61B465; 
  }
}

void turnX() {
  rxSpeed *= -1;
}

void turnY() {
  rySpeed *= -1;
}
