class Asteroid
{
  PVector location;
  PVector speed;
  int size;
  int health;
  float rSpeed; 

  Asteroid(int x, int y, int vx, int vy, int inputSize, int healthAmount)
  {
    location = new PVector(x, y);
    speed = new PVector(vx, vy);
    rSpeed = radians(15);
    size = inputSize;
    health = healthAmount;
  }

  void draw()
  {
    image(asteroid, location.x, location.y, size, size);
  }

  void move()
  {
    location.add(speed);

    if (location.x >= width-100 || location.x <= -20)
    {
      speed.x *= -1;
    }
    if (location.y >= height-80 || location.y <= -20)
    {
      speed.y *= -1;
    }
  }

  void healthBar(int Color)
  {
    fill(#FF0303);
    rect(location.x, location.y-15, 100, 20);
    fill(Color); 
    rect(location.x, location.y-15, health, 20);
  }

  void mousepressed()
  {
    if (health <= 0)
    {
      health = 0;
      speed.x*=0;
      speed.y*=0;
    } else if (dist(location.x + 50, location.y + 50,mouseX,mouseY) <= 40)
    {
      health -= 5;
    }
  }
}
