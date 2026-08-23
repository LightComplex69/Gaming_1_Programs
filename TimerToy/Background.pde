class states
{
  int timerX, bgColor, circleFill;
  float cx, cy;

  states()
  {
    timerX = 790;
    bgColor = 128;
    cx = cy = 10;
    circleFill = 0;
  }

  void timer()
  { 
    if (timerX >= width/2)
    {
      fill(0, 255, 0);
    } else if (timerX <= width/2+20 && timerX >= width/4)
    {
      fill(#FAFF08);
    } else
    {
      fill(255, 0, 0);
    }


    rect(5, 5, timerX, 60);

    if (timerX <= 5)
    {
      timerX = 790;

      if (bgColor == 128)
      {
        bgColor = 255;
      } else
      {
        bgColor = 128;
      }
    } else
    {
      timerX -= 1;
    }
  }

  void circleDraw()
  {
    if (bgColor == 128)
    {
      background(bgColor);
      
      if(circleFill >= 255)
      {
        circleFill = 0;
      }else
      {
        circleFill +=1;
      }
      
      fill(0,0,circleFill);
      cx = cx+0.5;
      cy = cy+0.5;

      ellipse(mouseX, mouseY, cx, cy);
    }
  }

  void lineTime()
  {
    if (bgColor == 255)
    {
      background(bgColor);
      circleFill = 0;
      cx = cy = 10;
      
      line(0, 0, mouseX, mouseY);
      line(width, 0, mouseX, mouseY);
      line(0, height, mouseX, mouseY);
      line(width, height, mouseX, mouseY);
    }
  }
}
