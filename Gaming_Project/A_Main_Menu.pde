class mainMenu
{
  PImage Title;
  PVector title;
  int lvlColor, optionsColor, exitColor, lvlSize, optionsSize, exitSize, r, g, b;
  float colorSpeed, titleSpeed;
  boolean stopSelection, exitSelected, lvlSelected, optionsSelected;

  mainMenu()
  {
    Title = loadImage("stickBallZ.png");
    title = new PVector(width/4-200, height/3);
    g = b = r = 0;
    colorSpeed = 1;
    titleSpeed = 0.8;
    lvlColor = #FEFF0D;
    optionsColor = exitColor = 255;
    lvlSize = 40;
    optionsSize = exitSize = 30;
    stopSelection = exitSelected = lvlSelected = optionsSelected = false;
  }

  void selectScreen()
  {
    background(g);
    fill(255);
    Title.resize(500,300);
    
    image(Title, title.x, title.y);

    textFont(sans);

    textSize(lvlSize);
    fill(lvlColor);
    text("Level Select", width/4-80, height*0.8);

    textSize(optionsSize);
    fill(optionsColor);
    text("Options", width/4-80, height*0.9);

    textSize(exitSize);
    fill(exitColor);
    text("Exit", width/4-80, height);
    
    g += colorSpeed;
    title.y += titleSpeed;
    titleSpeed += 0.2;
    
    if (title.y >= height*0.4 || title.y <= height*0.27)
    {
      titleSpeed *= -0.95; 
    }
    
    if (g >= 100 || g <= 0)
    {
      colorSpeed *= -1;
    }
  }

  void selectionControls()
  {
    if (key == CODED)
    {
      if (keyCode == DOWN)
      {
        if (lvlColor == #FEFF0D)
        {
          lvlColor = 255;
          lvlSize = 30;
          optionsColor = #FEFF0D;
          optionsSize = 40;
        } else if (optionsColor == #FEFF0D)
        {
          optionsColor = 255;
          optionsSize = 30;
          exitColor = #FEFF0D;
          exitSize = 40;
        } else
        {
          optionsColor = 255;
          optionsSize = 30;
          exitColor = #FEFF0D;
          exitSize = 40;
        }
      }

      if (keyCode == UP)
      {
        if (exitColor == #FEFF0D)
        {
          exitColor = 255;
          exitSize = 30;
          optionsColor = #FEFF0D;
          optionsSize = 40;
        } else if (optionsColor == #FEFF0D)
        {
          optionsColor = 255;
          optionsSize = 30;
          lvlColor = #FEFF0D;
          lvlSize = 40;
        } else
        {
          lvlColor = #FEFF0D;
          lvlSize = 40;
          exitSize = optionsSize = 30;
          exitColor = 255;
          optionsColor = 255;
        }
      }
    }

    if (key == ' ' && exitColor == #FEFF0D || key == 'm' || key == 'M') // isExitSelected
    {
      stopSelection = true;
      exitSelected = true;
      exit.activateFade = true;
    }

    if (key == ' ' && lvlColor == #FEFF0D) // isLevelsSelected
    {
      stopSelection = true;
      lvlSelected = true;
    }

    if (key == ' ' && optionsColor == #FEFF0D) // isOptionsSelected
    {
      stopSelection = true;
      optionsSelected = true;
    }
  }
}
