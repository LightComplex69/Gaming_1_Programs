boolean back;

void startScreen()
{
  if (state == 0)
  {
    background(#DE0FFF);
    fill(255);
    textSize(50);
    text("Random Racer", titleX, titleY);

    if (titleX < width/4-15)
    {
      titleX +=3;
    } else if (titleX >= width/4-15 && titleX <= width/4+16)
    {
      titleX *=1;
      back = true;
    } else
    {
      titleX -= 10;
    }

    if (back == true)
    {
      fill(255);

      textSize(30);
      text("Press Space to Start", width/2-110, height/2+50);

      fill(0);
      text("Press Space to Start", width/2-110, height/2+50);
      
    }
  }
}
