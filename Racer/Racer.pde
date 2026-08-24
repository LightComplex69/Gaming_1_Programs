PVector vP1, vP2;
float distanceP1, distanceP2;
int titleX, titleY, state;

void setup()
{
  size(800, 600); 
  state = 0;
  titleX = width+50;
  titleY = height/4;
  vP1 = new PVector(25, height/4);
  vP2 = new PVector(width-25, height*0.75);
}

void draw()
{
  if (state == 0)
  {
    startScreen();
  } else
  {

    distanceP1 = dist(vP1.x, vP1.y, width, height/2);
    distanceP2 = dist(vP2.x, vP2.y, 0, height/2);

    background(0, 0, 255);
    stroke(0);
    strokeWeight(10);
    line(0, height/2, width, height/2);

    noStroke();
    fill(0, 255, 0);
    rect(0, height/2, width, height);

    println(distanceP1, distanceP2);
    drawCircles();
    scoreCount();
  }
}

void drawCircles()
{
  if (state == 1)
  {
    fill(0, 255, 0);
    ellipse(vP1.x, vP1.y, 50, 50); 

    fill(0, 0, 255);
    ellipse(vP2.x, vP2.y, 50, 50);
  }
}

void scoreCount()
{
  if (state == 1)
  {
    if (distanceP1 < distanceP2)
    {
      fill(0);
      textSize(40);
      text("Player 1 is Winning!!!", width/2-60, height/2-10);
    } else if (distanceP2 < distanceP1)
    {
      fill(0);
      textSize(40);
      text("Player 2 is Winning!!!", width/2-60, height/2-10);
    } else
    {
      fill(0);
      textSize(40);
      text("The Players are Tied!!!", width/2-100, height/2-10);
    }
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    state = 1;
  }

  if (key == 'a')
  {
    vP1.x += 7;
  }

  if (key == 'l')
  {
    vP2.x -= 7;
  }
}
