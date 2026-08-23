/*
  Name: BiggerNumber
 Author: Rodrick Moore
 Date: 11/11/19
 Desc: Using the following code define the appropriate function(s) 
 so that the code functions.  No modifications to the draw or setup 
 function should be made.
 */

int firstN;
int secondN;

void setup()
{
  size(400, 400);
  println(biggerNumber(10, 20));
  println(biggerNumber(-10, 0));
  println(biggerNumber(200, -5));
  println(biggerNumber(-10, -233));
}

void draw() {
  background(0);
  textSize(20);
  stroke(255);
  text(biggerNumber(10, 20), width/2, 50);
  text(biggerNumber(-10, 0),width/2,150);
  text(biggerNumber(200, -5),width/2,250);
  text(biggerNumber(-10, -233),width/2,350);
}

int biggerNumber(int firstN, int secondN)
{
  if (firstN < secondN)
  {
    return secondN;
  } else
  {
    return firstN;
  }
}
