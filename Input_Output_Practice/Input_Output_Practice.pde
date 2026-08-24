void setup()
{
  size(800, 600);
}

void draw()
{
  background(200);
  fill(0);
  if (isAVowel(keyPressed) == true)
  {
    textSize(50);
    text("This is a vowel!", width/2-200, height/2);
  } else
  {
    textSize(50);
    text("This is not a vowel....", width/2-200, height/2);
  }
}

boolean isAVowel(boolean keyPressed)
{
  if (keyPressed && key == 'a' || keyPressed && key == 'e' || keyPressed && key == 'i' || keyPressed && key == 'o' || keyPressed && key == 'u')
  {
    return true;
  } else
  {
    return false;
  }
}
