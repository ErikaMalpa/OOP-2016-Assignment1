/*
  This is for 6 square-ishes
*/

class Square
{  
  void display()
  {
    int x = 440;
    int y = 670;
  
    int x2 = x + 160;
    int x3 = x2 + 570;
    int x4 = x3 + 160;
  
    stroke(#05F6FC);
    
    //First Rectangle
    line(x,y,x + 110,y); // top/--
    line(x,y,x,y+60); // l |
    line(x,y + 60,x + 40,y + 80); //<
    line(x + 40,y + 80,x + 130,y + 80); // bot --
    line(x + 110,y,x + 140,y + 50); // >
    line(x + 140,y + 50,x + 130,y + 80); // r |
    
    //Second Rectangle
    line(x2,y,x2 + 110,y); // top/--
    line(x2,y,x2,y+60); // l |
    line(x2,y + 60,x2 + 40,y + 80); //<
    line(x2 + 40,y + 80,x2 + 130,y + 80); // bot --
    line(x2 + 110,y,x2 + 140,y + 50); // >
    line(x2 + 140,y + 50,x2 + 130,y + 80); // r |
    
    //Third Rectangle
    line(x3,y,x3 + 110,y); // top/--
    line(x3,y,x3,y+60); // l |
    line(x3,y + 60,x3 + 40,y + 80); //<
    line(x3 + 40,y + 80,x3 + 130,y + 80); // bot --
    line(x3 + 110,y,x3 + 140,y + 50); // >
    line(x3 + 140,y + 50,x3 + 130,y + 80); // r |
    
    //Fourth Rectangle
    line(x4,y,x4 + 110,y); // top/--
    line(x4,y,x4,y+60); // l |
    line(x4,y + 60,x4 + 40,y + 80); //<
    line(x4 + 40,y + 80,x4 + 130,y + 80); // bot --
    line(x4 + 110,y,x4 + 140,y + 50); // >
    line(x4 + 140,y + 50,x4 + 130,y + 80); // r |
    
  }
  
  void design()
  {
    int x = 450;
    int y = 680;
    
    //design for the first button
    strokeWeight(5);
    line(x,y,x+80,y);
    line(x,y + 20,x+50,y + 20);
    line(x,y + 40,x+20,y + 40);
  }
}