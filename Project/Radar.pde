class Radar
{
  /*float x = 950;
  float y = 850;
  float z = 400;
  float r = 0;*/
  
  float x = 950;
  float y = 850;
  float z = 400;
  float angle;
  float radius = 150;
  float speed = 3.5;
  float cx;
  float cy;
  
  void show()
  {
    noFill();
    stroke(255);
    ellipse(x, y, z,z);
      
    cx = 950 + cos(radians(angle))*(radius);
    cy = 850 + sin(radians(angle))*(radius);
    
    line(950, 850, cx,cy);
    
    angle -= speed;
  }
}