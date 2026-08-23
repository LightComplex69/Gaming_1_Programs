/* 
 Given the following data set, initialize an array to contain the data.  
 Then create two functions named: containsLetter & characterCount.  
 You will use these functions to create an interactive program.  
 The user will press a letter and the program will respond by using these
 functions to display the results on the screen.  If the user presses ‘a’ 
 then the program should look within the dataset to see if the letter is 
 found and how many times the letter ‘a’ appears in the dataset.
 */



char[] charlist = new char[]{'j', 'k', 'g', 'i', 'j', 'a', 'h', 'u', 'h', 'h', 'd', 'f', 'p', 'g', 'n', 'n', 'v', 'x', 'a', 'k', 'x', 'g', 'v', 'g', 's', 'l', 'o', 
  'q', 'a', 'a', 'u', 'k', 'c', 'x', 'r', 'x', 's', 'e', 'o', 'l', 't', 's', 'x', 'w', 'r', 'w', 'x', 's', 'n', 'u', 'o', 'f', 'i', 'o', 'a', 'l', 'j', 'w', 's', 'a', 'm', 'p', 'm', 'v', 'd', 'r', 'c', 'b', 
  'g', 'm', 'p', 'j', 'b', 'g', 'n', 'g', 'u', 'i', 'x', 'n', 'i', 'u', 'o', 'i', 'f', 'a', 'j', 'j', 'x', 'h', 'p', 'c', 'y', 'n', 'y', 'q', 'n', 'y', 'k', 'j', 'i', 'h', 'v', 'd', 'f', 'a', 'd', 'j', 'v', 
  'h', 'n', 'v', 'w', 'e', 'g', 'r', 'r', 'f', 'w', 'c', 'e', 't', 'c', 'u', 'f', 'q', 'm', 'j', 'n', 'u', 'y', 'f', 'k', 'r', 'x', 'q', 'c', 'c', 'r', 'a', 'v', 't', 'k', 'c', 'l', 'c', 'u', 'i', 'h', 'c', 
  'p', 'i', 'w', 'f', 'q', 'k', 'l', 'j', 'j', 'r', 'e', 'd', 'f', 'l', 'q', 's', 't', 'x', 'r', 'n', 'e', 'b', 'i', 'e', 'x', 'c', 'v', 'f'};
int x, sum;
boolean hasit;
void setup()
{
  x = 0;
  sum = 0;
  hasit = false;

  textSize(15);
  fill(0);

  size(300, 300);
}

void draw()
{
  for (int i = 0; i < charlist.length; i++)
  {
    x = i;
    println(containsLetter(), key);
    containsLetter();
    if (containsLetter())
    {
      background(128);
      text(key + " Character Found: " + characterCount() + " times", width/6, height/2);
      noLoop();
    }
  } 
}

void keyPressed()
{
  if (key == ' ')
  {
    text("Page Reset! Press another key", width/6, height/6);
    sum = 0;
    loop();
  }
}

boolean containsLetter()
{
  if (key == charlist[x])
  {
    return true;
  } else
  {
    return false;
  }
}

int characterCount()
{
  sum += int(containsLetter());
  return sum;
}
