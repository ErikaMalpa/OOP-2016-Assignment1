/*
  This will have a text moving above the "window"
*/

class Text
{
  float x = 200;
  float y = 80;
  
  void display()
  {
    pushMatrix();
    textSize(15);
    stroke(#F8FC30);
    text("Welcome back, check mission update and user target",x,y);
    x++;
    
    //so that it will go back to the start
    if (x > 1700)
    {
      x = 200;
    }
    popMatrix();
  }
}