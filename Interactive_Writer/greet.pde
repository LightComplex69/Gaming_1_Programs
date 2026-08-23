void greet()
{
  nameInput = false;
  fill(0);
  background(0);
  fill(#FFB11F);
  textSize(50);
  text("Greetings "+ name, slide, height/2);
  
  if(slide <= width/4)
  {
   slide = slide + 0; 
   slide2 = slide2 + 0;
  } else
  {
   slide = slide - 10;
   slide2 = slide2 - 10;
  }
}
