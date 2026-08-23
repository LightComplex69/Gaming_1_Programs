class Options
{
  int fade, introSize, introColor, controlsSize, controlsColor, creditsSize, creditsColor;
  boolean fadeBack;

  Options()
  {
    fade = 0;
    fadeBack = false;
    introSize = 50;
    introColor = #55FF70;
    controlsSize = creditsSize = 40;
    controlsColor = creditsColor = 255;
  }

  void fadeScreen()
  {
    if (menu.optionsSelected)
    {
      fill(0, fade);
      rect(0, 0, width, height + height);

      if (fade >= 255)
      { 
        fade = 0;
        state = 3;
      } else
      {
        fade += 6;
      }
    }
  }

  void credits()
  {
    textFont(sans);

    textSize(20);
    fill(#55FF70);
    text("Music from: Undertale by Toby Fox", width/4-80, height*0.8);

    fill(#FF8F17);
    text("Sprites from https://spritedatabase.net/game/2", width/4-80, height*0.9);

    fill(#FF08D2);
    text("Title Screen made with https://textcraft.net", width/4-80, height);
  }

  void selectScreen()
  {
    background(fade);

    if (fadeBack)
    {
      background(fade);

      if (fade <= 80 && fade >= 50)
      {
        menu.stopSelection = false;
        fade += 2;
      } else if (fade >= 100)
      {
        menu.optionsSelected = false;
        fadeBack = false;
        fade += 0;
        state = 1;
        fade = 0;
      } else
      {
        fade += 2;
      }
    } else {

      textFont(sans);

      textSize(introSize);
      fill(introColor);
      text("View Intro", width/4-80, height*0.8);

      textSize(controlsSize);
      fill(controlsColor);
      text("Controls", width/4-80, height*0.9);

      textSize(creditsSize);
      fill(creditsColor);
      text("Credits", width/4-80, height);
    }
  }

  void selectControls()
  {
    if (key == CODED)
    {
      if (keyCode == DOWN)
      {
        if (introColor == #55FF70) // green
        {
          introColor = 255;
          introSize = 40;
          controlsColor = #FF8F17;
          controlsSize = 50;
        } else if (controlsColor == #FF8F17) // orange-ish
        {
          controlsColor = 255;
          controlsSize = 40;
          creditsColor = #FF08D2; // purple
          creditsSize = 50;
        } else
        {
          creditsColor = #FF08D2;
          creditsSize = 50;

          controlsColor = introColor = 255;
          controlsSize = introSize = 40;
        }
      }

      if (keyCode == UP)
      {
        if (creditsColor == #FF08D2)
        {
          creditsColor = 255;
          creditsSize = 40;
          controlsColor = #FF8F17;
          controlsSize = 50;
        } else if (controlsColor == #FF8F17)
        {
          controlsColor = 255;
          controlsSize = 40;
          introColor = #55FF70;
          introSize = 50;
        } else
        {
          introColor = #55FF70;
          introSize = 50;
          creditsSize = controlsSize = 40;
          creditsColor = controlsColor = 255;
        }
      }
    }

    if (key == ' ' && creditsSize == 50)
    {
      state = 3.1;
    }

    if (key == 'm' || key == 'M')
    {
      fadeBack = true;
    }
  }
}
