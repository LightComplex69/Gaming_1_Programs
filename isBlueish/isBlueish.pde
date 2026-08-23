void setup()
{
  size(800, 600);
  println(isBlueish(10,40,30));
}


boolean isBlueish(int red, int blue, int green)
{
  if (blue > red && blue > green)
  {
    return true;
  } else
  {
    return false;
  }
}
