/*
  For the background, this will act as stars twinkling
*/

class Background
{
  void display()
  {
    float x = random(width);
    float y = random(height);
    float s = random(1,5);
    noStroke();
    fill(255);
    ellipse(x,y,s,s);
  }
}