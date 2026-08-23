class Enemy
{
  PImage[] enemyKickRight, enemyKickLeft, enemyWalkRight, enemyWalkLeft, enemyDieRight, enemyDieLeft;
  PVector location, speed;
  boolean right, left, dieRight, dieLeft;
  int health, redHealth, frameTime, frameTime2, dieFade;

  Enemy(float x, float y, float sx, float sy, int healthAmount)
  {
    enemyWalkRight = new PImage[24];
    enemyWalkRight[0] = loadImage("enemyWalk1.png");
    enemyWalkRight[1] = loadImage("enemyWalk1.png");
    enemyWalkRight[2] = loadImage("enemyWalk1.png");
    enemyWalkRight[3] = loadImage("enemyWalk1.png");
    enemyWalkRight[4] = loadImage("enemyWalk2.png");
    enemyWalkRight[5] = loadImage("enemyWalk2.png");
    enemyWalkRight[6] = loadImage("enemyWalk2.png");
    enemyWalkRight[7] = loadImage("enemyWalk2.png");
    enemyWalkRight[8] = loadImage("enemyWalk3.png");
    enemyWalkRight[9] = loadImage("enemyWalk3.png");
    enemyWalkRight[10] = loadImage("enemyWalk3.png");
    enemyWalkRight[11] = loadImage("enemyWalk3.png");
    enemyWalkRight[12] = loadImage("enemyWalk4.png");
    enemyWalkRight[13] = loadImage("enemyWalk4.png");
    enemyWalkRight[14] = loadImage("enemyWalk4.png");
    enemyWalkRight[15] = loadImage("enemyWalk4.png");
    enemyWalkRight[16] = loadImage("enemyWalk5.png");
    enemyWalkRight[17] = loadImage("enemyWalk5.png");
    enemyWalkRight[18] = loadImage("enemyWalk5.png");
    enemyWalkRight[19] = loadImage("enemyWalk5.png");
    enemyWalkRight[20] = loadImage("enemyWalk6.png");
    enemyWalkRight[21] = loadImage("enemyWalk6.png");
    enemyWalkRight[22] = loadImage("enemyWalk6.png");
    enemyWalkRight[23] = loadImage("enemyWalk6.png");

    enemyWalkLeft = new PImage[24];
    enemyWalkLeft[0] = loadImage("enemyWalkLeft1.png");
    enemyWalkLeft[1] = loadImage("enemyWalkLeft1.png");
    enemyWalkLeft[2] = loadImage("enemyWalkLeft1.png");
    enemyWalkLeft[3] = loadImage("enemyWalkLeft1.png");
    enemyWalkLeft[4] = loadImage("enemyWalkLeft2.png");
    enemyWalkLeft[5] = loadImage("enemyWalkLeft2.png");
    enemyWalkLeft[6] = loadImage("enemyWalkLeft2.png");
    enemyWalkLeft[7] = loadImage("enemyWalkLeft2.png");
    enemyWalkLeft[8] = loadImage("enemyWalkLeft3.png");
    enemyWalkLeft[9] = loadImage("enemyWalkLeft3.png");
    enemyWalkLeft[10] = loadImage("enemyWalkLeft3.png");
    enemyWalkLeft[11] = loadImage("enemyWalkLeft3.png");
    enemyWalkLeft[12] = loadImage("enemyWalkLeft4.png");
    enemyWalkLeft[13] = loadImage("enemyWalkLeft4.png");
    enemyWalkLeft[14] = loadImage("enemyWalkLeft4.png");
    enemyWalkLeft[15] = loadImage("enemyWalkLeft4.png");
    enemyWalkLeft[16] = loadImage("enemyWalkLeft5.png");
    enemyWalkLeft[17] = loadImage("enemyWalkLeft5.png");
    enemyWalkLeft[18] = loadImage("enemyWalkLeft5.png");
    enemyWalkLeft[19] = loadImage("enemyWalkLeft5.png");
    enemyWalkLeft[20] = loadImage("enemyWalkLeft6.png");
    enemyWalkLeft[21] = loadImage("enemyWalkLeft6.png");
    enemyWalkLeft[22] = loadImage("enemyWalkLeft6.png");
    enemyWalkLeft[23] = loadImage("enemyWalkLeft6.png");

    enemyKickRight = new PImage[24];
    enemyKickRight[0] = loadImage("enemyKickRight1.png");
    enemyKickRight[1] = loadImage("enemyKickRight1.png");
    enemyKickRight[2] = loadImage("enemyKickRight1.png");
    enemyKickRight[3] = loadImage("enemyKickRight1.png");
    enemyKickRight[4] = loadImage("enemyKickRight2.png");
    enemyKickRight[5] = loadImage("enemyKickRight2.png");
    enemyKickRight[6] = loadImage("enemyKickRight2.png");
    enemyKickRight[7] = loadImage("enemyKickRight2.png");
    enemyKickRight[8] = loadImage("enemyKickRight3.png");
    enemyKickRight[9] = loadImage("enemyKickRight3.png");
    enemyKickRight[10] = loadImage("enemyKickRight3.png");
    enemyKickRight[11] = loadImage("enemyKickRight3.png");
    enemyKickRight[12] = loadImage("enemyKickRight4.png");
    enemyKickRight[13] = loadImage("enemyKickRight4.png");
    enemyKickRight[14] = loadImage("enemyKickRight4.png");
    enemyKickRight[15] = loadImage("enemyKickRight4.png");
    enemyKickRight[16] = loadImage("enemyKickRight5.png");
    enemyKickRight[17] = loadImage("enemyKickRight5.png");
    enemyKickRight[18] = loadImage("enemyKickRight5.png");
    enemyKickRight[19] = loadImage("enemyKickRight5.png");
    enemyKickRight[20] = loadImage("enemyKickRight6.png");
    enemyKickRight[21] = loadImage("enemyKickRight6.png");
    enemyKickRight[22] = loadImage("enemyKickRight6.png");
    enemyKickRight[23] = loadImage("enemyKickRight6.png");

    enemyDieRight = new PImage[1];
    enemyDieRight[0] = loadImage("enemyDie.png");

    enemyDieLeft = new PImage[1];
    enemyDieLeft[0] = loadImage("enemyDieLeft.png");

    location = new PVector(x, y);
    speed = new PVector(sx, sy);
    right = true;
    left = false;
    health = redHealth = healthAmount;
    frameTime = 0;
    frameTime2 = 0;
    dieFade = 255;
  }

  void draw()
  {

    frameTime += 1;

    location.add(speed);

    if (frameTime > 23)
    {
      if (!p.playerDead && health > 0 && right && !p.leftDust && p.facingLeft && dist(p.location.x, p.location.y, location.x, location.y) <= 70)
      {
        frameTime2 +=1;
        p.health -= 0.05;

        if (frameTime2 > 23)
        {
          frameTime2 = 0;
          frameTime = 0;
        } else
        {
          image(enemyKickRight[frameTime2], location.x, location.y);
        }
      } else if (!p.playerDead && health > 0 && right && !p.rightDust && p.facingRight && dist(p.location.x, p.location.y, location.x, location.y) <= 80)
      {
        frameTime2 +=1;
        p.health -= 0.05;

        if (frameTime2 > 23)
        {
          frameTime2 = 0;
          frameTime = 0;
        } else
        {
          image(enemyKickRight[frameTime2], location.x, location.y);
        }
      } else if (!p.playerDead && health > 0 && left && !p.rightDust && p.facingRight && dist(p.location.x, p.location.y, location.x, location.y) <= 80)
      {

        frameTime2 +=1;
        p.health -= 0.05;

        if (frameTime2 > 23)
        {
          frameTime2 = 0;
          frameTime = 0;
        } else
        {
          image(enemyKickRight[frameTime2], location.x, location.y);
        }
      } else if (!p.playerDead && health > 0 && left && !p.leftDust && p.facingLeft && dist(p.location.x, p.location.y, location.x, location.y) <= 60)
      {

        frameTime2 +=1;
        p.health -= 0.05;

        if (frameTime2 > 23)
        {
          frameTime2 = 0;
          frameTime = 0;
        } else
        {
          image(enemyKickRight[frameTime2], location.x, location.y);
        }
      } else
      {
        frameTime = 0;
      }
    } else if (location.x >= width*0.53)
    {
      speed.x *= -1;
      right = false;
      left = true;
    } else if (location.x <= -13)
    {
      speed.x *= -1;
      left = false;
      right = true;
    } else if (right)
    {
      if (health <= 0)
      {
        tint(255, dieFade);
        image(enemyDieRight[0], location.x, location.y);
        speed.x = 0;
        if (dieFade <= 0)
        {
          dieFade = 0;
        } else
        {
          dieFade -= 10;
        }
      } else
      {
        image(enemyWalkRight[frameTime], location.x, location.y);
      }
    } else if (left)
    {
      if (health <= 0)
      {
        tint(255, dieFade);    
        image(enemyDieLeft[0], location.x, location.y);
        speed.x = 0;
        if (dieFade <= 0)
        {
          dieFade = 0;
        } else
        {
          dieFade -= 10;
        }
      } else
      {
        image(enemyWalkLeft[frameTime], location.x, location.y);
      }
    }

    if (p.rightDust && dist(p.location.x, p.location.y, location.x, location.y) <= 130)
    {
      if (health <= 0)
      {
        health -= 0;
      } else
      {
        health -= 1;
      }
    }
    if (p.leftDust && dist(p.location.x, p.location.y, location.x+50, location.y) <= 120)
    {
      if (health <= 0)
      {
        health -= 0;
      } else
      {
        health -= 1;
      }
    }
  }

  void healthBar(int Color)
  {
    if (health > 0)
    {
      fill(#FF0303);
      rect(location.x, location.y-15, redHealth, 10);
      fill(Color); 
      rect(location.x, location.y-15, health, 10);
    } else
    {
      noTint();
    }
  }
}
