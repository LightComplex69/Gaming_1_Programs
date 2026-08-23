class Pokemon1
{
  PImage lucario;  
  PVector location;
  boolean angry, normal;
  int redFade, reverseFade;

  Pokemon1()
  {
    lucario = loadImage("lucario.png");
    location = new PVector(width/2, height/2);
    normal = true;
    angry = false;
    redFade = 0;
    reverseFade = 255;
  }

  void draw()
  {
    println(redFade);
    tint(255);
    
    if(angry)
    {
      tint(redFade,reverseFade, reverseFade);
    }
    
    location.x = constrain(location.x, 0, width-67);
    location.y = constrain(location.y, 0, height-77);

    image(lucario, location.x, location.y);
  }

  void move()
  {

    if (key == 'w')
    {
      location.y -= 10;
    }
    if (key == 's')
    {
      location.y += 10;
    }
    if (key == 'a')
    {
      location.x -= 10;
    }
    if (key == 'd')
    {
      location.x += 10;
    }
  }

  void checkAngry()
  {
    if (dist(location.x + 33.5, location.y + 38.5, mouseX, mouseY) < 35)
    {
      angry = true;
    }
  }

  void angry()
  {
    if (angry)
    {
      if (redFade >= 255)
      {
        redFade += 0;
      } else
      {
        redFade += 4;
        reverseFade -= 4;
      }
    }
  }
}
