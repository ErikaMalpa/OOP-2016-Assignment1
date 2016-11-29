/*
  A simple sinewave for design
*/

class SineWave
{
  float i;
  
  void display()
  {
    for (i = 0; i < width/4; i++) 
    {
      fill(#F1FA03);
      ellipse(i*4,650+sin(i*0.1)*10,2,2);
      ellipse(i*4,640+sin(i*0.1)*10,2,2);
    }
  }
}