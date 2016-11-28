/*
  This is for 6 square-ishes
*/

class Square
{
  int x = 440;
  int y = 700;
  
  void display()
  {
    stroke(#05F6FC);
    
    //First Square
    line(x,y,x + 80,y); // top/--
    line(x,y,x,y+40); // l |
    line(x,y + 40,x + 20,y + 50); //<
    line(x + 20,y + 50,x + 100,y + 50); // bot --
    line(x + 80,y,x + 100,y + 10); // >
    line(x + 100,y + 10,x + 100,y + 50); // r |
  }
}