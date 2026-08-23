class LevelOne
{
  int winFade;
  float textY, textSpeed;
  boolean youWin;

  LevelOne()
  {
    youWin = false;
    textY = height*0.65;
    textSpeed = 3;
    winFade = 0;
  }

  void youWin()
  {
    if (winFade >= 180)
    {
      fill(0, winFade);
      rect(0, 0, width, height+height);

      winFade += 0;
      if (textY >= height*0.75 || textY <= height*0.6)
      {
        textSpeed *= -1;
      }
      textY += textSpeed;

      fill(#00FF39);
      textSize(60);
      text("You Win!", width*0.15, textY);

      fill(#FFE51C);
      textSize(40);
      text("Press SPACE to Go To Next Level", width*0.08, textY + 150);

      textSize(30);
      fill(150, 20, 70);
      text("or", width*0.24, textY + 300);

      textSize(40);
      fill(#FFE51C);
      text("Press M to go back to Exit Game", width*0.1, textY + 450);
    } else
    {
      fill(0, winFade);
      rect(0, 0, width, height+height);
      winFade += 3;
    }
  }
  
  void winControls()
  {
    if(youWin)
    {
      if (key == 'm' || key == 'M')
      {
        state = -1;
      } 
    }
  }
}
