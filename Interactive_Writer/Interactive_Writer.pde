/*
  Name: Interactive Writer
 Author: Rodrick Moore
 Date: 11/13/19
 Desc: An orange prompt appears in the center of your black screen (‘Enter your name: ‘). 
 You can type in a name and it appears in the center of the screen as you type. (example. ‘duran’)
 Upon pressing <enter/return> the word disappears and a greeting slides in from right to the center 
 of the screen:  “Greetings duran!”
 When the greeting reaches the center position, then it grows and fades until is disappears
 When the greeting disappears the process starts anew
 */

String name;
float separateT;
float textX;
float textX2;
float fade;
float slide;
float slide2;
boolean nameInput;
boolean furtherBack;
boolean greet;
boolean enter;
boolean textOver;
boolean textOver2;
void setup()
{
  size(800, 600); 
  name = "";
  separateT = 10;
  fade = 255;
  slide = width + 100;
  slide2 = width + 110;
  nameInput = true;
  enter = false;
  greet = false;
  textX = width/2-50;
  textX2 = 100;
  textOver2 = false;
  background(0);
  fill(255);
  rect(width/2-50, height/2, 300, 30);
}

void draw()
{
  if (enter == false)
  {
    fill(#FFB11F);
    textSize(20);
    text("Enter your name:", width/8 + 80, height/2 + 23);
  }
  if (enter == true && greet == false)
  {
    enter();
  }
  if (enter == true && greet == true)
  {

    greet();
  }
}

void keyPressed()
{
  if (nameInput == true)
  {
    if (textX <= width/2-50)
    {
      textX = width/2-50;
    }
    if (key == ENTER) {
      enter = true;
    } 
    if (key != BACKSPACE)
    {
      textSize(20);
      fill(#FFB11F);
      text(key, textX, height/2 + 20);
      name = name + key;
      textX += textWidth(key);
    }
  }
}
