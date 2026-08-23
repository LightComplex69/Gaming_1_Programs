float c1, c2;

void setup()
{
  size(800, 600);
  c1 = width/2;
  c2 = height/2;

    println(drawCrossHairOnScreen(c1,c2));

}



boolean drawCrossHairOnScreen(float c1, float c2)
{
  line(c1-50, c2, c1+50, c2); 
  line(c1, c2-50, c1, c2+50);
  if (c1 <= 0 || c2 <= 0 || c1 >= width || c2 >= height)
  {
    return false;
  } else
  {
    return true;
  }
}
