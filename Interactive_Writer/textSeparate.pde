void textSeparate()
{
  if (textOver == true)
  {
    textX = textX + separateT; 
    textOver = false;
  }
  if (textOver2 == true)
  {
    if (key == 'd')
    {
      textX = textX + 13;
    } else if (key == 'm' || key == 'w')
    {
      textX = textX + 15;
      textOver2 = false;
    }
  }
}
