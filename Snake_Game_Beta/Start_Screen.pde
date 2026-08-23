class playScreen
{
  int snakeX, snakeY;

  playScreen()
  {
    snakeX = width/2+10;
    snakeY = height/2+10;
  }

  void area()
  {
    background(#039EFC);           // play area
    noStroke();
    fill(#A0BBCB);
    beginShape();
    vertex(50, 50);
    vertex(width-50, 50);
    vertex(width-50, height-50);
    vertex(50, height-50);
    vertex(50, 50);
    endShape();

    stroke(0);
    for (int x = 50; x <= width-50; x+=20)
    {
      line(x, 50, x, height-50);
    }

    for (int y = 50; y <= height-50; y+=20)
    {
      line(50, y, width-50, y);
    }

    if (snakeX >= width-80)
    {
      right = false;
    } 
    if (snakeX <= 60)
    {
      left = false;
    } 
    if (snakeY >= height-80)
    {
      down = false;
    } 
    if (snakeY <= 60)
    {
      up = false;
    }
  }

  void snake()
  {

    stroke(0);
    fill(#0BFF00);
    if (left == true)
    {
      snakeX -= 20;
      println("snakeX = " + snakeX);
    } else if (down == true)
    {
      snakeY += 20;
      println("snakeY = " + snakeY);
    } else if (up == true)
    {
      snakeY -= 20;
      println("snakeY = " + snakeY);
    } else if (right == true)
    {
      snakeX += 20;
      println("snakeX = " + snakeX);
    }
    rect(snakeX, snakeY, 20, 20);
  }
}
