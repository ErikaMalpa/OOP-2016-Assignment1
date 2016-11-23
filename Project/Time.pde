class Time
{
  int s = second();
  int m = minute();
  int h = hour();
  int d = day();
  int mo = month();
  int ye = year();
  
  int x = width/2;
  int y = height/2;
  
  void display()
  {
    textSize(20);
    text(h + ":" + m + ":" + s, x,y - 440);
    textSize(30);
    text(d + "/" + mo + "/" + ye, x - 810, y + 60);
  }
}