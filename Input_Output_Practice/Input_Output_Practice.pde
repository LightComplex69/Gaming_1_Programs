void setup()
{
  size(800, 600);
}

void draw()
{
  background(200);
  if(isAVowel(keyPressed) == true)
  {
   textSize(20);
   text("This is a vowel!",width/2-50,height/2); 
  
  }else
  {
   textSize(20);
   text("This is not a vowel....",width/2-50,height/2); 
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
