class Background
{
  void draw()
  {
    float x = random(width);
    float y = random(height);
    float s = random(1,5);
    ellipse(x,y,s,s);
  }
}