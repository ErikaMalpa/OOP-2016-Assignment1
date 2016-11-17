class Stars
{
  float starx;
  float stary;
  void display()
  {
    starx = random(width);
    stary = random(height);
    background(0);
    fill(255);
    noStroke();
    ellipse(starx, stary,10, 10);
    
    starx = starx + random(-2,2);
  }
}