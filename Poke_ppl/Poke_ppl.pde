Pokemon1 lucario;
Pokemon2 mewtwo;

void setup()
{
  size(800, 600);
  lucario = new Pokemon1();
  mewtwo = new Pokemon2();
}

void draw()
{
  background(128);
  for (int x = -600; x < width; x+=45)
  {
    line(x, -5, x + 600, height);
  }

  for (int x2 = 30; x2 < width+600; x2+=45)
  {
    line(x2, -5, x2-600, height);
  }

  lucario.draw();  
  lucario.angry();
  mewtwo.draw();
}

void keyPressed()
{
  lucario.move();
  mewtwo.move();
}

void mousePressed()
{
 lucario.checkAngry(); 
}
