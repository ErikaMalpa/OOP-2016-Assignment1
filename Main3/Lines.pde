class Lines
{
  float load = 0;//for the dots
  
 void display()
 {
   //While loop for the lines and dots around the program
  int x = 10;
  int y = 10;
  while (x < load)
  {
    strokeWeight(2);
    stroke(#03F4FF);//blue
    line(x, 10, x, 10);//upper dot blue
    x = x + 10;
    line(y, 1070, y, 1070);//lower dot blue
    y = y + 10;
    line(10,10,10,1070);//left blue
    line(1910,10,1910,1070);//right blue
    stroke(#F6FF03);//yellow
    strokeWeight(1);
    line(x,20,x,20);//upper dot yellow
    line(y,1060,y,1060);//lower dot yellow
    line(20,20,20,1060);//left yellow
    line(1900,20,1900,1060);//right yellow
  }
    //the speed in which the dots go to the right
    load = load + 10;
 }
}