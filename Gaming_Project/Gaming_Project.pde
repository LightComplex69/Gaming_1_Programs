import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PFont sans;
float state;
mainMenu menu;
Player p;
Enemy e, e2, e3;
Levels lvl;
LevelOne lvl1;
Options options;
Exit exit;

Minim minim;
AudioInput input;
AudioPlayer menuSong, songl1, songl2;


void setup()
{
  fullScreen();
  sans = loadFont("boldSansFont.vlw");
  state = 1;
  p = new Player();
  e = new Enemy(width*0.5, height, 1, 0, 100);
  e2 = new Enemy(width*0.4, height, 2, 0, 150);
  e3 = new Enemy(width*0.1, height, 2.5, 0, 200);
  menu = new mainMenu();
  options = new Options();
  exit = new Exit();
  lvl = new Levels();
  lvl1 = new LevelOne();
  minim = new Minim(this);
  menuSong = minim.loadFile("menu.mp3");
  songl1 = minim.loadFile("strongerMonsters.mp3");
  songl2 = minim.loadFile("determination.mp3");

  input = minim.getLineIn();
}

void draw()
{

  println(width, height, state, p.location.x, p.health, e2.dieFade);
  background(150);

  pushMatrix();
  translate(0, height);
  rotate(radians(-90));

  if (state == -1)
  {
    exit.exitGame();
  } else if (state == 1)
  {
    if (menuSong.position() >= 32052)
    {
      menuSong.rewind();
      menuSong.play();
    } else
    {
      menuSong.play();
    }
    menu.selectScreen();

    if (menu.exitSelected)
    {
      exit.prompt();
      exit.areYouSure();
    } else if (menu.lvlSelected)
    {
      lvl.fadeScreen();
    } else if (menu.optionsSelected)
    {
      options.fadeScreen();
    }
  } else if (state == 2)
  {
    songl1.rewind();
    songl1.pause();
    songl2.rewind();
    songl2.pause();
    if (menuSong.position() >= 32052)
    {
      menuSong.rewind();
      menuSong.play();
    } else
    {
      menuSong.play();
    }
    lvl.selectScreen();
  } else if (state == 3)
  {
    if (menuSong.position() >= 32052)
    {
      menuSong.rewind();
      menuSong.play();
    } else
    {
      menuSong.play();
    }
    options.selectScreen();
  } else if (state == 2.1)
  {
    menuSong.rewind();
    menuSong.pause();
    if (songl1.position() >= 63181)
    {
      songl1.rewind();
      songl1.play();
    } else
    {
      songl1.play();
    }

    if (p.playerDead && p.dieFade >= 180)
    {
      songl1.rewind();
      songl1.pause();
      if (songl2.position() >= 50410)
      {
        songl2.rewind();
        songl2.play();
      } else
      {
        songl2.play();
      }
    }

    if (p.rightDust)
    {
      e.draw();
      e.healthBar(#0EFF03);

      if (e.dieFade == 0)
      {
        e2.draw();
        e2.healthBar(#0EFF03);
      } 
      if (e2.dieFade == 0)
      {
        e3.draw();
        e3.healthBar(#0EFF03);
      }
      if (e3.dieFade == 0)
      {
        lvl1.youWin();
      }

      tint(255);
      p.dustingRight();
      p.healthBar(#0EFF03);
    } else if (p.leftDust)
    {
      e.draw();
      e.healthBar(#0EFF03);

      if (e.dieFade == 0)
      {
        e2.draw();
        e2.healthBar(#0EFF03);
      } 
      if (e2.dieFade == 0)
      {
        e3.draw();
        e3.healthBar(#0EFF03);
      }
      if (e3.dieFade == 0)
      {
        lvl1.youWin();
      }

      tint(255);
      p.dustingLeft();
      p.healthBar(#0EFF03);
    } else
    {
      p.playerAttacks();
      e.draw();
      e.healthBar(#0EFF03);

      if (e.dieFade == 0)
      {
        e2.draw();
        e2.healthBar(#0EFF03);
      } 
      if (e2.dieFade == 0)
      {
        e3.draw();
        e3.healthBar(#0EFF03);
      }
      if (e3.dieFade == 0)
      {
        lvl1.youWin = true;
        lvl1.youWin();
      }

      tint(255);
      p.draw();
      p.healthBar(#0EFF03);
      if (p.exitFade)
      {
        p.exit();
      }
    }
  }
  
  if(state == 3.1)
  {
    options.credits();
  }

  popMatrix();
}

void keyPressed()
{
  if (state == 1 && !menu.stopSelection)
  {
    menu.selectionControls();
  } else if (exit.areYouSure)
  {
    exit.areYouSureSelection();
  } else if (state == 2)
  {
    lvl.selectControls();
  } else if (state == 2.1)
  {
    p.playerMovement(keyCode, true);
    p.dieControls();
    lvl1.winControls();
  } else if (state == 3)
  {
    options.selectControls();
  }
}

void keyReleased()
{
  if (state == 2.1)
  {
    p.playerMovement(keyCode, false);
  }
}
