//Lost In Space

PImage asteroid;
float distance, distance2;
Asteroid newAst;
Asteroid newAst2;

void setup()
{
  asteroid = loadImage("asteroid.png");

  size(800, 600);
  newAst = new Asteroid(0, 0, 2, 2, 100, 100);

  newAst2 = new Asteroid(width/2, height/2, -2, 3, 100, 100);
}

void draw()
{
  background(128);
  println(distance, distance2);

  newAst.draw();
  newAst.healthBar(#0EFF03);
  newAst.move();

  newAst2.draw();
  newAst2.healthBar(#0EFF03);
  newAst2.move();
}

void mousePressed()
{
  newAst.mousepressed();
  newAst2.mousepressed();
}
