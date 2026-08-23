void setup()
{
  size(800,600);
  println(isbetween(100,50,500));
}

void draw()
{
  
}

boolean isbetween(float cx1,float cx2,float cx3)
{
  fill(0);
  ellipse(cx1,height/2,50,50);
  
  fill(255);
  ellipse(cx3,height/2,50,50);
  
  if(cx1 > cx2 && cx2 > cx3 || cx3 > cx2 && cx2 > cx1)
  {
   fill(0,255,0); 
   ellipse(cx2,height/2,50,50);
   return true;
  }else
  {
   fill(255,0,0); 
   ellipse(cx2,height/2,50,50);
   return false;
  }

}
