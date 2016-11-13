class Background
{
  float x;
  float y;
  float z;
}

Background()
{
  x = random(0, width);
  y = random(0, height);
  z = random(0, width);
}

void update()
{
  
}

void appear()
{
  fill(255);
  ellipse(x,y,5,5);
}