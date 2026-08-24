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
    if (!right)
    {
      left = true;
      down = false;
      up = false;
    }
  }
  if (key == 'd' || key == 'D')
  {
    if (!left)
    {
      right = true;
      down = false;
      up = false;
    }
  }
  if (key == 'w' || key == 'W')
  {
    if (!down)
    {
      up = true;
      left = false;
      right = false;
    }
  }
  if (key == 's' || key == 'S')
  {
    if (!up)
    {
      down = true;
      left = false;
      right = false;
    }
  }
}
