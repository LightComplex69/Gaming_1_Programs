class Levels
{
  int fade, level1color, level2color, text1size, text2size;
  PVector level1size, level2size;
  boolean fadeBack, fadeForward;

  Levels()
  {
    fade = 0;
    fadeBack = fadeForward = false;
    text1size = 50;
    text2size = 40;
    level1color = #FEFF0D;
    level1size = new PVector(450, 350);

    level2color = 255;
    level2size = new PVector(400, 300);
  }

  void fadeScreen()
  {
    if (menu.lvlSelected)
    {
      fill(0, fade);
      rect(0, 0, width, height + height);

      if (fade >= 255)
      { 
        fade = 0;
        state = 2;
      } else
      {
        fade += 10;
      }
    }
  }

  void selectScreen()
  {
    background(fade);

    if (fadeBack)
    {
      background(fade);

      if (fade <= 80 && fade >= 60)
      {
        menu.stopSelection = false;
        fade += 2;
      } else if (fade >= 100)
      {
        menu.lvlSelected = false;
        fadeBack = false;
        fade += 0;
        state = 1;
        fade = 0;
      } else
      {
        fade += 2;
      }
    } 
    else if (fadeForward)
    {
      background(fade);

      if (fade >= 100)
      {
        menu.lvlSelected = false;
        fadeBack = false;
        fadeForward = false;
        fade = 0;
        state = 2.1;
      } else
      {
        fade += 2;
      }
    } 
    else
    {

      fill(level1color);
      textSize(text1size);
      rect(width*0.125, height/3, level1size.x, level1size.y);
      text("Level 1", width*0.15, height*0.3);

      fill(level2color);
      textSize(text2size);
      rect(width*0.125, height, level2size.x, level2size.y);
      text("Level 2", width*0.15, height*0.97);
    }
  }

  void selectControls()
  {
    if (key == CODED)
    {
      //if (keyCode == DOWN)
      //{
      //  if (level1color == #FEFF0D)
      //  {
      //    level1color = 255;
      //    level1size.x = 400;
      //    level1size.y = 300;
      //    text1size = 40;

      //    level2color = #FEFF0D;
      //    level2size.x = 450;
      //    level2size.y = 350;
      //    text2size = 50;
      //  }
      //}

      if (keyCode == UP)
      {
        if (level2color == #FEFF0D)
        {
          level2color = 255;
          level2size.x = 400;
          level2size.y = 300;
          text2size = 40;

          level1color = #FEFF0D;
          level1size.x = 450;
          level1size.y = 350;
          text1size = 50;
        }
      }
    }

    if (key == 'm' || key == 'M')
    {
      fadeBack = true;
    }

    if (key == ' ' && level1color == #FEFF0D)
    {
      fadeForward = true;
    }
  }
}
