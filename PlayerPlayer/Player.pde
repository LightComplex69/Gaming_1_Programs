class Player
{
  PVector location, speed;
  PImage[] aigis;
  char u, l, d, r;

  Player(float x, float y, char up, char left, char down, char right)
  {
    location = new PVector(x, y);
    speed = new PVector(8, 8);
    u = up;
    l = left;
    d = down;
    r = right;

    aigis = new PImage[4];

    aigis[0] = loadImage("aigis1.png");
    aigis[1] = loadImage("aigis2.png");
    aigis[2] = loadImage("aigis3.png");
    aigis[3] = loadImage("aigis4.png");
  }

  void update()
  {
    frameRate(20);
    aigis[0].resize(80, 144);
    aigis[1].resize(80, 144);
    aigis[2].resize(80, 144);
    aigis[3].resize(80, 144);

    image(aigis[frameCount%4], location.x, location.y);
  }

  void keyPressed()
  {
    if (key == u)
    {
      if (location.y <= 0-10)
      {
        location.y += 0;
      } else
      {
        location.y -= speed.y;
      }
    }
    if (key == d)
    {
      if (location.y >= height - 125)
      {
        location.y += 0;
      } else
      {
        location.y += speed.y;
      }
    }
    if (key == l)
    {
      if (location.x <= 0-10)
      {
        location.x -= 0;
      } else
      {
        location.x -= speed.x;
      }
    }
    if (key == r)
    {
      if (location.x >= width - 80)
      {
        location.x += 0;
      } else
      {
        location.x += speed.x;
      }
    }
  }
}
