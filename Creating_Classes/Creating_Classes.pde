randomSquare newSquare;   // create variable using class

void setup()
{
  size(400,300);
  newSquare = new randomSquare(width/4, height/4, 3,2);  // call variables from the class
}

void draw()
{
  background(128);
  newSquare.drawRect();  // call created variable for class.funtions for class
  newSquare.moveRect();
}

class randomSquare      // class + className
{
  int rectX, rectY, speedX, speedY;     // create variables(Data)

  randomSquare(int Xinput, int Yinput, int SpeedinputX, int SpeedinputY)  // initialize variables (Constructor) (create inputs for function)
  {
    rectX = Xinput;
    rectY = Yinput;
    speedX = SpeedinputX;
    speedY = SpeedinputY;
  }

  void drawRect()         // funtionallity 
  {
    fill(0, 255, 0);
    rect(rectX, rectY, 50, 50);
  }

  void moveRect()
  {
    rectX += speedX;
    rectY += speedY;
    if (rectX >= width+50 || rectY >= height+50)
    {
      rectX = -50;
      rectY = -50;
    }
  }
}
