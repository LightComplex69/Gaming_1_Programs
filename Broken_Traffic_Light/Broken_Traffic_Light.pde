boolean lightOn, turnOn, turnOn2, turnOn3, turnOffAll;
float distance, distance2, distance3, distance4;
void setup()
{
  size(800, 600);
  turnOn = turnOn2 = turnOn3 = turnOffAll = lightOn = false;
}

void draw()
{
  background(128);
  fill(0);
  distance = dist(width/3+133, (width/6-50), mouseX, mouseY);
  distance2 = dist(width/3+133, width/6+150, mouseX, mouseY);
  distance3 = dist(width/3+133, width/6+350, mouseX, mouseY);
  distance4 = dist(width/3*2-30, height-25, mouseX, mouseY);
  rect(width/3, 0, width/3, height);
  stroke(0);
  fill(255);
  ellipse(width/3*2-30, height-25, 50, 50);

  stroke(255);
  if (turnOn)
  {
    fill(255, 0, 0);
    ellipse(width/3+133, width/6-50, 150, 150);
  } else if (turnOffAll)
  {
    fill(0);
  } else
  {
    fill(0);
  }
  ellipse(width/3+133, width/6-50, 150, 150);

  if (turnOn2)
  {

    fill(#F0E516);
    ellipse(width/3+133, width/6+150, 150, 150);
  } else if (turnOffAll)
  {
    fill(0);
  } else
  {
    fill(0);
  }
  ellipse(width/3+133, width/6+150, 150, 150);
  if (turnOn3)
  {

    fill(0, 255, 0);
    lightOn = true;
    ellipse(width/3+133, width/6+350, 150, 150);
  } else if (turnOffAll)
  {
    if (lightOn)
    {
      fill(0);
    } else
    {
      fill(0, 255, 0);
    }
  } else
  {
    fill(0);
    lightOn = false;
  }
  ellipse(width/3+133, width/6+350, 150, 150);
  println(distance);
  println(lightOn);
}

void mousePressed()
{
  if (distance <= 75)
  {
    if (turnOn == true)
    {
      turnOn = false;
    } else
    {
      turnOn = true;
    }
  } else
  {
    turnOn = false;
  }

  if (distance2 <= 75)
  {
    if (turnOn2 == true)
    {
      turnOn2 = false;
    } else
    {
      turnOn2 = true;
    }
  } else
  {
    turnOn2 = false;
  }

  if (distance3 <= 75)
  {
    if (turnOn3 == true)
    {
      turnOn3 = false;
    } else
    {
      turnOn3 = true;
    }
  } else
  {
    turnOn3 = false;
  }

  if (distance4 <= 25)
  {
    if (turnOffAll && lightOn)
    {
      turnOffAll = false;
      lightOn = false;
    } else
    {
      turnOffAll = true;
      lightOn = true;
    }
  }
}
