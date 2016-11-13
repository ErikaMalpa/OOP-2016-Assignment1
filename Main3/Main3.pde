float load = 0;//lines

void setup()
{
  size(1500,1000);
}

void draw()
{
  background(0);
  
  int x = 10;
  int y = 10;
  while (x < load)
  {
    strokeWeight(2);
    stroke(#03F4FF);
    line(x, 10, x, 10);
    x = x + 10;
    line(y, 990, y, 990);
    y = y + 10;
    line(10,10,10,990);
    line(1490,10,1490,990);
    stroke(#F6FF03);
    strokeWeight(1);
    line(x,20,x,20);
    line(y,980,y,980);
    line(20,20,20,980);
    line(1480,20,1480,980);
  }
  
  load = load + 5;
}