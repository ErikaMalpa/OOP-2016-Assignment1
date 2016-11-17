class Checkboard
{
  int size = 50;
  int x = 0;
  int y = 0;
  int row = 0;

  void display()
  {
    while (y > 60)
  {
    background(0);
    stroke(255);
    fill(0);
    rect(x, y, size, size);
    
    x+=size*2;
    
    if(x > 20)
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
  
  x = size;
  y = 0;
  row = 0;
  
  while (y < 660)
  {
    stroke(255);
    fill(0);
    rect(x, y, size, size);
    
    x+=size*2;
    
    if(x > 30)
    {

      y+=size;
      
      if(row%2 == 0)
      {
        x = 0;
      }
      else
      {
        x = size;
      }
       row++;
    }
  } 
  }
}