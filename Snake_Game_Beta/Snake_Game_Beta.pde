boolean left, right, up, down;
playScreen play;

void setup()
{
  size(800, 600);
  left = right = up = down = false;
  play = new playScreen();
}

void draw()
{
  play.area();
  play.snake();
}

void keyPressed()
{
  if (key == 'a' || key == 'A')
  {
    if (right == true)
    {
      left = false;
    } else
    {
      left = true;
    }
  } else if (key == 'd' || key == 'D')
  {
    if (left == true)
    {
      right = false;
    } else
    {
      right = true;
    }
  } else if (key == 'w' || key == 'W')
  {
    if (down == true)
    {
      up = false;
    } else
    {
      up = true;
    }
  } else if (key == 's' || key == 'S')
  {
    if (up == true)
    {
      down = false;
    } else
    {
      down = true;
    }
  }
}
