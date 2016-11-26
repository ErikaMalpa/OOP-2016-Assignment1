/*
  A "radar" for the spaceship
*/

class Radar
{ 
  float x = 950;
  float y = 850;
  float z = 400;
  float angle;
  float radius = 200;
  float speed = 3.5;
  float cx;
  float cy;
  
  void show()
  {
    noFill();
    stroke(#F6FF0A);
    ellipse(x, y, z,z);
    ellipse(x, y, z - 90,z - 90);
    ellipse(x, y, z - 180,z - 180);
    ellipse(x, y, z - 270,z - 270);
    line(950, 650,950,785);//the top line
    line(950, 915,950,1050);//the bottom line
    line(1015,850,1150,850);//the right line
    line(750, 850,885,850);//the left line
      
    cx = 950 + cos(radians(angle))*(radius);
    cy = 850 + sin(radians(angle))*(radius);
    
    stroke(255);
    line(950, 850, cx,cy);
    
    angle -= speed;
  }
}