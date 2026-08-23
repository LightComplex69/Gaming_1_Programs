class Player
{
  PImage[] playerFacingRight, playerFacingLeft, playerMovingRight, playerMovingLeft, playerDustLeft, playerDustRight, playerDieRight, playerDieLeft;
  PVector location, speed, kiBlastLoc, kiBlastSpeed, gravity;
  boolean exitFade, movingRight, movingLeft, facingRight, facingLeft, dieLeft, dieRight, playerDead, leftDust, rightDust;
  int health, frameTime, frameTimeL, frameTime2, dieFade;
  float textY, textSpeed, dieFadeSpeed;

  Player()
  {
    playerFacingRight = new PImage[32];
    playerFacingRight[0] = loadImage("gohanIdle1.png");
    playerFacingRight[1] = loadImage("gohanIdle1.png");
    playerFacingRight[2] = loadImage("gohanIdle1.png");
    playerFacingRight[3] = loadImage("gohanIdle1.png");
    playerFacingRight[4] = loadImage("gohanIdle1.png");
    playerFacingRight[5] = loadImage("gohanIdle1.png");
    playerFacingRight[6] = loadImage("gohanIdle1.png");
    playerFacingRight[7] = loadImage("gohanIdle1.png");
    playerFacingRight[8] = loadImage("gohanIdle2.png");
    playerFacingRight[9] = loadImage("gohanIdle2.png");
    playerFacingRight[10] = loadImage("gohanIdle2.png");
    playerFacingRight[11] = loadImage("gohanIdle2.png");
    playerFacingRight[12] = loadImage("gohanIdle2.png");
    playerFacingRight[13] = loadImage("gohanIdle2.png");
    playerFacingRight[14] = loadImage("gohanIdle2.png");
    playerFacingRight[15] = loadImage("gohanIdle2.png");
    playerFacingRight[16] = loadImage("gohanIdle3.png");
    playerFacingRight[17] = loadImage("gohanIdle3.png");
    playerFacingRight[18] = loadImage("gohanIdle3.png");
    playerFacingRight[19] = loadImage("gohanIdle3.png");
    playerFacingRight[20] = loadImage("gohanIdle3.png");
    playerFacingRight[21] = loadImage("gohanIdle3.png");
    playerFacingRight[22] = loadImage("gohanIdle3.png");
    playerFacingRight[23] = loadImage("gohanIdle3.png");
    playerFacingRight[24] = loadImage("gohanIdle4.png");
    playerFacingRight[25] = loadImage("gohanIdle4.png");
    playerFacingRight[26] = loadImage("gohanIdle4.png");
    playerFacingRight[27] = loadImage("gohanIdle4.png");
    playerFacingRight[28] = loadImage("gohanIdle4.png");
    playerFacingRight[29] = loadImage("gohanIdle4.png");
    playerFacingRight[30] = loadImage("gohanIdle4.png");
    playerFacingRight[31] = loadImage("gohanIdle4.png");

    playerFacingLeft = new PImage[32];
    playerFacingLeft[0] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[1] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[2] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[3] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[4] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[5] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[6] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[7] = loadImage("gohanFacingLeft1.png");
    playerFacingLeft[8] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[9] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[10] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[11] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[12] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[13] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[14] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[15] = loadImage("gohanFacingLeft2.png");
    playerFacingLeft[16] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[17] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[18] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[19] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[20] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[21] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[22] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[23] = loadImage("gohanFacingLeft3.png");
    playerFacingLeft[24] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[25] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[26] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[27] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[28] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[29] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[30] = loadImage("gohanFacingLeft4.png");
    playerFacingLeft[31] = loadImage("gohanFacingLeft4.png");

    playerMovingRight = new PImage[8];
    playerMovingRight[0] = loadImage("gohanMovingRight1.png");
    playerMovingRight[1] = loadImage("gohanMovingRight1.png");
    playerMovingRight[2] = loadImage("gohanMovingRight1.png");
    playerMovingRight[3] = loadImage("gohanMovingRight1.png");
    playerMovingRight[4] = loadImage("gohanMovingRight2.png");
    playerMovingRight[5] = loadImage("gohanMovingRight2.png");
    playerMovingRight[6] = loadImage("gohanMovingRight2.png");
    playerMovingRight[7] = loadImage("gohanMovingRight2.png");

    playerMovingLeft = new PImage[8];  
    playerMovingLeft[0] = loadImage("gohanMovingLeft1.png");
    playerMovingLeft[1] = loadImage("gohanMovingLeft1.png");
    playerMovingLeft[2] = loadImage("gohanMovingLeft1.png");
    playerMovingLeft[3] = loadImage("gohanMovingLeft1.png");
    playerMovingLeft[4] = loadImage("gohanMovingLeft2.png");
    playerMovingLeft[5] = loadImage("gohanMovingLeft2.png");
    playerMovingLeft[6] = loadImage("gohanMovingLeft2.png");
    playerMovingLeft[7] = loadImage("gohanMovingLeft2.png");

    playerDustRight = new PImage[32];
    playerDustRight[0] = loadImage("gohanRightDust1.png");
    playerDustRight[1] = loadImage("gohanRightDust1.png");
    playerDustRight[2] = loadImage("gohanRightDust1.png");
    playerDustRight[3] = loadImage("gohanRightDust1.png");
    playerDustRight[4] = loadImage("gohanRightDust2.png");
    playerDustRight[5] = loadImage("gohanRightDust2.png");
    playerDustRight[6] = loadImage("gohanRightDust2.png");
    playerDustRight[7] = loadImage("gohanRightDust2.png");
    playerDustRight[8] = loadImage("gohanRightDust3.png");
    playerDustRight[9] = loadImage("gohanRightDust3.png");
    playerDustRight[10] = loadImage("gohanRightDust3.png");
    playerDustRight[11] = loadImage("gohanRightDust3.png");
    playerDustRight[12] = loadImage("gohanRightDust4.png");
    playerDustRight[13] = loadImage("gohanRightDust4.png");
    playerDustRight[14] = loadImage("gohanRightDust4.png");
    playerDustRight[15] = loadImage("gohanRightDust4.png");
    playerDustRight[16] = loadImage("gohanRightDust5.png");
    playerDustRight[17] = loadImage("gohanRightDust5.png");
    playerDustRight[18] = loadImage("gohanRightDust5.png");
    playerDustRight[19] = loadImage("gohanRightDust5.png");
    playerDustRight[20] = loadImage("gohanRightDust6.png");
    playerDustRight[21] = loadImage("gohanRightDust6.png");
    playerDustRight[22] = loadImage("gohanRightDust6.png");
    playerDustRight[23] = loadImage("gohanRightDust6.png");
    playerDustRight[24] = loadImage("gohanRightDust7.png");
    playerDustRight[25] = loadImage("gohanRightDust7.png");
    playerDustRight[26] = loadImage("gohanRightDust7.png");
    playerDustRight[27] = loadImage("gohanRightDust7.png");
    playerDustRight[28] = loadImage("gohanRightDust8.png");
    playerDustRight[29] = loadImage("gohanRightDust8.png");
    playerDustRight[30] = loadImage("gohanRightDust8.png");
    playerDustRight[31] = loadImage("gohanRightDust8.png");

    playerDustLeft = new PImage[32];
    playerDustLeft[0] = loadImage("gohanLeftDust1.png");
    playerDustLeft[1] = loadImage("gohanLeftDust1.png");
    playerDustLeft[2] = loadImage("gohanLeftDust1.png");
    playerDustLeft[3] = loadImage("gohanLeftDust1.png");
    playerDustLeft[4] = loadImage("gohanLeftDust2.png");
    playerDustLeft[5] = loadImage("gohanLeftDust2.png");
    playerDustLeft[6] = loadImage("gohanLeftDust2.png");
    playerDustLeft[7] = loadImage("gohanLeftDust2.png");
    playerDustLeft[8] = loadImage("gohanLeftDust3.png");
    playerDustLeft[9] = loadImage("gohanLeftDust3.png");
    playerDustLeft[10] = loadImage("gohanLeftDust3.png");
    playerDustLeft[11] = loadImage("gohanLeftDust3.png");
    playerDustLeft[12] = loadImage("gohanLeftDust4.png");
    playerDustLeft[13] = loadImage("gohanLeftDust4.png");
    playerDustLeft[14] = loadImage("gohanLeftDust4.png");
    playerDustLeft[15] = loadImage("gohanLeftDust4.png");
    playerDustLeft[16] = loadImage("gohanLeftDust5.png");
    playerDustLeft[17] = loadImage("gohanLeftDust5.png");
    playerDustLeft[18] = loadImage("gohanLeftDust5.png");
    playerDustLeft[19] = loadImage("gohanLeftDust5.png");
    playerDustLeft[20] = loadImage("gohanLeftDust6.png");
    playerDustLeft[21] = loadImage("gohanLeftDust6.png");
    playerDustLeft[22] = loadImage("gohanLeftDust6.png");
    playerDustLeft[23] = loadImage("gohanLeftDust6.png");
    playerDustLeft[24] = loadImage("gohanLeftDust7.png");
    playerDustLeft[25] = loadImage("gohanLeftDust7.png");
    playerDustLeft[26] = loadImage("gohanLeftDust7.png");
    playerDustLeft[27] = loadImage("gohanLeftDust7.png");
    playerDustLeft[28] = loadImage("gohanLeftDust8.png");
    playerDustLeft[29] = loadImage("gohanLeftDust8.png");
    playerDustLeft[30] = loadImage("gohanLeftDust8.png");
    playerDustLeft[31] = loadImage("gohanLeftDust8.png");

    playerDieRight = new PImage[32];
    playerDieRight[0] = loadImage("gohanDieRight1.png");
    playerDieRight[1] = loadImage("gohanDieRight1.png");
    playerDieRight[2] = loadImage("gohanDieRight1.png");
    playerDieRight[3] = loadImage("gohanDieRight1.png");
    playerDieRight[4] = loadImage("gohanDieRight1.png");
    playerDieRight[5] = loadImage("gohanDieRight1.png");
    playerDieRight[6] = loadImage("gohanDieRight1.png");
    playerDieRight[7] = loadImage("gohanDieRight1.png");
    playerDieRight[8] = loadImage("gohanDieRight2.png");
    playerDieRight[9] = loadImage("gohanDieRight2.png");
    playerDieRight[10] = loadImage("gohanDieRight2.png");
    playerDieRight[11] = loadImage("gohanDieRight2.png");
    playerDieRight[12] = loadImage("gohanDieRight2.png");
    playerDieRight[13] = loadImage("gohanDieRight2.png");
    playerDieRight[14] = loadImage("gohanDieRight2.png");
    playerDieRight[15] = loadImage("gohanDieRight2.png");
    playerDieRight[16] = loadImage("gohanDieRight3.png");
    playerDieRight[17] = loadImage("gohanDieRight3.png");
    playerDieRight[18] = loadImage("gohanDieRight3.png");
    playerDieRight[19] = loadImage("gohanDieRight3.png");
    playerDieRight[20] = loadImage("gohanDieRight3.png");
    playerDieRight[21] = loadImage("gohanDieRight3.png");
    playerDieRight[22] = loadImage("gohanDieRight3.png");
    playerDieRight[23] = loadImage("gohanDieRight3.png");
    playerDieRight[24] = loadImage("gohanDieRight4.png");
    playerDieRight[25] = loadImage("gohanDieRight4.png");
    playerDieRight[26] = loadImage("gohanDieRight4.png");
    playerDieRight[27] = loadImage("gohanDieRight4.png");
    playerDieRight[28] = loadImage("gohanDieRight4.png");
    playerDieRight[29] = loadImage("gohanDieRight4.png");
    playerDieRight[30] = loadImage("gohanDieRight4.png");
    playerDieRight[31] = loadImage("gohanDieRight4.png");

    movingRight = movingLeft = facingLeft = rightDust = leftDust = exitFade = false;
    facingRight = true;
    dieFade = 0;
    frameTime = 0;
    frameTimeL = 0;
    frameTime2 = 0;
    textY = height*0.65;
    textSpeed = 3;
    dieFadeSpeed = 6;
    location = new PVector(0, height);
    speed = new PVector(8, 2.1);
    gravity = new PVector(0, 0.2);
    kiBlastLoc = new PVector(0, 0);
    kiBlastSpeed = new PVector(2, 2);
    health = 100;
  }

  void draw()
  {
    frameTime = 0;
    frameTimeL = 0;
    fill(0);

    line(0, height+94, width, height+94);
    if (playerDead)
    {
      speed.x = 0;
      if (frameTime2 > 31)
      {
        image(playerDieRight[31], location.x, location.y-15);
        if (dieFade >= 180)
        {
          fill(0, dieFade);
          rect(0, 0, width, height+height);

          dieFade += 0;
          if (textY >= height*0.75 || textY <= height*0.6)
          {
            textSpeed *= -1;
          }
          textY += textSpeed;

          fill(255, 0, 0);
          textSize(60);
          text("Game Over", width*0.15, textY);

          fill(#FFE51C);
          textSize(40);
          text("Press SPACE to Restart", width*0.12, textY + 150);

          textSize(30);
          fill(150, 20, 70);
          text("or", width*0.24, textY + 300);

          textSize(40);
          fill(#FFE51C);
          text("Press M to Quit", width*0.13, textY + 450);
        } else
        {
          fill(0, dieFade);
          rect(0, 0, width, height+height);
          dieFade += 3;
        }
      } else
      {
        image(playerDieRight[frameTime2], location.x, location.y-15);

        frameTime2 += 1;
      }
    } else if (movingRight)
    {
      facingRight = true;
      facingLeft = false;
      image(playerMovingRight[frameCount%8], location.x, location.y-20);
    } else if (movingLeft)
    {
      facingLeft = true;
      facingRight = false;
      image(playerMovingLeft[frameCount%8], location.x, location.y-20);
    } else if (facingRight)
    {  
      image(playerFacingRight[frameCount%32], location.x, location.y);
    } else if (facingLeft)
    {
      image(playerFacingLeft[frameCount%32], location.x, location.y);
    }  


    location.x = constrain(location.x + speed.x*(int(movingRight) - int(movingLeft)), -8, width*0.481);
  }

  boolean playerMovement(final int i, final boolean b)
  {
    switch (i)
    {
    case LEFT:
      return movingLeft = b;

    case RIGHT:
      return movingRight = b;

    default: 
      return b;
    }
  }

  void playerAttacks()
  {
    if (keyPressed)
    {
      if (key == ' ' && facingRight && !playerDead)
      {
        rightDust = true;
      } else if (key == ' ' && facingLeft && !playerDead)
      {
        leftDust = true;
      } else
      {
        rightDust = false;
        leftDust = false;
      }
    }
  }


  void playerControlsRelease()
  {
    if (movingLeft)
    {
      facingRight = false;
      facingLeft = true;
    } else if (movingRight)
    {
      facingLeft = false;
      facingRight = true;
    }
  }

  void dieControls()
  {
    if (playerDead)
    {
      if (key == ' ')
      {
        songl2.rewind();
        songl2.pause();
        frameTime2 = 0;
        dieFade = 0;
        health = 100;
        location.x = 0;
        location.y = height;
        speed.x = 8;
        e.location.x = width*0.5;
        e2.location.x = width*0.4;
        e3.location.x = width*0.1;
        e.health = 100;
        e2.health = 150;
        e3.health = 200;
        e.dieFade = 255;
        e2.dieFade = 255;
        e3.dieFade = 255;
        e.speed.x = 1;
        e2.speed.x = 2;
        e3.speed.x = 2.5;
        e.right = true;
        e2.right = true;
        e3.right = true;
        playerDead = false;
        facingRight = true;
      }
      if (key == 'm' || key == 'M')
      {
        dieFade = 0;
        exitFade = true;
      }
    }
  }

  void dustingRight()
  {  
    line(0, height+94, width, height+94);
    if (rightDust && facingRight && !playerDead)
    {
      frameTime +=1 ;
      if (frameTime > 31)
      {
        rightDust = false;
        draw();
      } else
      {
        image(playerDustRight[frameTime], location.x-5, location.y-18);
      }
    } else
    {
      rightDust = false;
      draw();
    }
  }

  void dustingLeft()
  {  
    line(0, height+94, width, height+94);
    if (leftDust && facingLeft && !playerDead)
    {
      frameTimeL +=1 ;
      if (frameTimeL > 31)
      {
        leftDust = false;
        draw();
      } else
      {
        image(playerDustLeft[frameTimeL], location.x-100, location.y-18);
      }
    } else
    {
      leftDust = false;
      draw();
    }
  }

  void exit()
  {
    if (dieFade >= 255)
    {
      songl2.rewind();
      songl2.pause();
      exitFade = false;
      playerDead = false;
      frameTime2 = 0;
      dieFade = 0;
      health = 100;
      speed.x = 8;
      location.x = 0;
      e.location.x = width*0.5;
      e2.location.x = width*0.4;
      e3.location.x = width*0.1;
      e.health = 100;
      e2.health = 150;
      e3.health = 200;
      e.dieFade = 255;
      e2.dieFade = 255;
      e3.dieFade = 255;
      state = 2;
    } 
    dieFade += dieFadeSpeed;

    fill(0, dieFade);
    rect(0, 0, width, height+height);
  }

  void healthBar(int Color)
  {
    if (health > 0)
    {
      fill(#FF0303);
      rect(location.x, location.y-15, 100, 10);
      fill(Color); 
      rect(location.x, location.y-15, health, 10);
    } else 
    {
      noTint();
      playerDead = true;
    }
  }
}
