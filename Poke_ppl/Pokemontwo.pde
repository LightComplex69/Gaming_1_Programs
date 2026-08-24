class Pokemon2
{
  PImage mewtwo;  
  PVector location;
  boolean angry, normal;

  Pokemon2()
  {
    mewtwo = loadImage("megamewtwo.png");
    location = new PVector(width/4, height/4);
    normal = true;
    angry = false;
  }

  void draw()
  {
    tint(255);
    location.x = constrain(location.x, 0, width-64);
    location.y = constrain(location.y, 0, height - 80);
    
    image(mewtwo, location.x, location.y);
  }

  void move()
  {
    if (key == CODED)
    {
      if (keyCode == UP)
      {
        location.y -= 10;
      }
      if (keyCode == DOWN)
      {
        location.y += 10;
      }
      if (keyCode == LEFT)
      {
        location.x -= 10;
      }
      if (keyCode == RIGHT)
      {
        location.x += 10;
      }
    }
  }
}
