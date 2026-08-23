void enter()
{
  fill(fade);
  rect(0,0,width,height);
  fade = fade - 5;
  if(fade <= 0)
  {
   greet = true; 
  }
}
