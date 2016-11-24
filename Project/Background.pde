class Background
{
  float x = random(0,1920);
  float y = random(0,1080);
  float s = random(1,5);
  int i;
  
  void draw()
  {
    for(i = 0; i < 500; i++)
    {
      ellipse(x,y,s,s);
    }
  }
}