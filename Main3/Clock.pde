class Clock
{
  void display()
  {
  //For the clock
    stroke(255);
    ellipse(width/2,600,150,150);

    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
 
    float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;

    float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
    
    //the minute
    stroke(#03F4FF);
    strokeWeight(1);
    line(100, 100, cos(s) * 72 + 100, sin(s) * 72 + 100);

    //the seconds
    stroke(#F6FF03);
    strokeWeight(2);
    line(100, 100, cos(m) * 60 + 100, sin(m) * 60 + 100);
    
    //the hour
    strokeWeight(4);
    line(100, 100, cos(h) * 50 + 100, sin(h) * 50 + 100);
  }
    
}