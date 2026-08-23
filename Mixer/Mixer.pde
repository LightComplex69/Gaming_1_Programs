import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1, song2;
AudioInput input;

PVector player1;

void setup()
{
  size(800, 600);
  player1 = new PVector(25, height/2);

  minim = new Minim(this);
  song1 = minim.loadFile("anotherMedium.mp3");
  song2 = minim.loadFile("amalgam.mp3");
  input = minim.getLineIn();
}

void draw()
{
  background(128);
  noStroke();

  println(player1.x, song2.isPlaying(), song2.position(), song2.length());

  if (player1.x <= width/2)
  {
    fill(#03E8FF, 255);
    rect(0, 0, width/2, height);


    fill(#FEFF03, 150);
    rect(width/2, 0, width, height);

    if (song1.position() >= 142200)
    {
      song1.rewind();
      song1.play();
    } else
    {
      song1.play();
    }
    song2.pause();
  } else
  {
    fill(#03E8FF, 60);
    rect(0, 0, width/2, height);

    fill(#FEFF03, 255);
    rect(width/2, 0, width, height);

    if (song2.position() >= 80000)
    {
      song2.rewind();
      song2.play();
    } else
    {
      song2.play();
    }
    song1.pause();
  }
  player();
}
void player()
{
  fill(#03FF32);
  ellipse(player1.x, player1.y, 50, 50);
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      player1.x -= 10;
    }
    if (keyCode == RIGHT)
    {
      player1.x += 10;
    }
  }
}
