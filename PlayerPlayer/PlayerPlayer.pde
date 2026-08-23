/*
  Name: PlayerPlayer
  Author: Rodrick
  Desc: Create the class used below. The class should move the player around
  and the player should NEVER leave the screen. You should also add 2 
  additional features for the player.
*/
Player p1, p2;

void setup()
{
  size(800,600);
  p1 = new Player(20, height/2, 'w', 'a', 's', 'd');
  p2 = new Player(width-90, height/2, 'i', 'j', 'k', 'l');
}

void draw()
{
  background(128);
  p1.update();
  p2.update();
}

void keyPressed()
{
  p1.keyPressed();
  p2.keyPressed();
}
