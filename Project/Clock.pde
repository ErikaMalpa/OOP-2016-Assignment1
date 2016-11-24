/*
  A clock, I had a reference from processing 
*/

class Clock
{
  int num = 60;
  int x = width/2;
  int y = 400;
  
  void display()
  {
    //For the clock
    noStroke();
    
    ellipse(width/2,400,200,200);

    float s = map(second(), 0, num, 0, TWO_PI) - HALF_PI;//I subtracted half pie because they all start at the 3 and not at 12
 
    float m = map(minute(), 0, num, 0, TWO_PI) - HALF_PI;

    float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
    
    //the seconds
    stroke(#03F4FF);
    line(x, y, cos(s) * 72 + x, sin(s) * 72 + y);

    //the minute
    stroke(#F6FF03);
    line(x, y, cos(m) * 60 + x, sin(m) * 60 + y);
    
    //the hour
    strokeWeight(4);
    line(x, y, cos(h) * 50 + x, sin(h) * 50 + y);
  }
}