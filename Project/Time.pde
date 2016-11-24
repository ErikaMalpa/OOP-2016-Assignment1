/*
  This will show the date and the time stamp when the user opens the program, currently I dont know
  how to make the time move.
  Update! I have figured out how to make the time move!
*/

class Time
{
  int d = day();
  int mo = month();
  int ye = year();
  
  int x = width/2;
  int y = height/2;
  
  float ss = 0;
  int mm = 0;
  int hh = 0;
  
  float last1 = 0;;
  int last2 = 0;
  int last3 = 0;
  
  float ss1 = 0;
  int mm1 = 0;
  int hh1 = 0;
  
  void display()
  {
    float s = second();
    int m = minute();
    int h = hour();
  
    ss = (s - last1);
    mm = (m - last2);
    hh = (h - last3);
    
    last1 = s;
    last2 = m;
    last3 = h;
    
    ss1 += ss;
    mm1 += mm;
    hh1 += hh;
    
    textSize(20);
    text(hh1 + ":" + mm1 + ":" + ss1, x,y - 440);
    textSize(30);
    text(d + "/" + mo + "/" + ye, x - 810, y + 60);
  }
}