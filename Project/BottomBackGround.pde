class BottomBackGround
{
  int size = 30;
  int x = 0;
  int y = 0;
  int row = 0;
  
  void display()
  {
    while (y < width)
    {
      stroke(#C9FFF7);
      noFill();
      rect(x, y, size, size);
    
      x+=size*2;
    
      if(x > width)
      {
        y+=size;
        if(row%2 == 0)
        {
          x = size;
        }
        else
        {
          x = 0;
        }
         row++;
      }
    }  
  }
}