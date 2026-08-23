class Exit
{
  int yesColor, yesSize, noColor, noSize, fade, closeFade;
  boolean areYouSure, activateFade;

  Exit()
  {
    fade = 0;
    closeFade = 255;
    noColor = #FF0D15;
    noSize = 50;
    yesColor = 255;
    yesSize = 40;
    areYouSure = false;
  }

  void prompt()
  {
    if (menu.stopSelection && activateFade)
    {
      fill(0, fade);
      rect(0, 0, width, height+height);

      if (fade >= 200)
      {
        fade += 0;
        activateFade = false;
        areYouSure = true;
      } else 
      {
        fade += 6;
      }
    }
  }

  void areYouSure()
  {
    if (areYouSure)
    {
      fill(0, fade);
      rect(0, 0, width, height+height);
      
      textSize(60);
      fill(255);
      text("Are You Sure About That?", width*0.008, height/2);

      textSize(noSize);
      fill(noColor);
      text("No", width*0.4, height*0.66);

      textSize(yesSize);
      fill(yesColor);
      text("Yes", width*0.09, height*0.66);
    }
  }

  void areYouSureSelection()
  {
    if (noColor == #FF0D15 && key == CODED && keyCode == LEFT)
    {
      noColor = 255;
      noSize = 40;

      yesColor = #FEFF0D;
      yesSize = 50;
    } else if (yesColor == #FEFF0D && key == CODED && keyCode == RIGHT)
    {
      yesColor = 255;
      yesSize = 40;

      noColor = #FF0D15;
      noSize = 50;
    } else if (noColor == #FF0D15 && key == ' ' || key == 'm' || key == 'M')
    {
      fade = 0;
      areYouSure = menu.stopSelection = menu.exitSelected = false;
    } else if (yesColor == #FEFF0D && key == ' ')
    {
      state = -1;
    }
  }

  void exitGame()
  {
    if (closeFade <= 0)
    {
      exit();
    }
    closeFade -= 4;

    fill(closeFade);
    rect(0, 0, width, height + height);
  }
}
