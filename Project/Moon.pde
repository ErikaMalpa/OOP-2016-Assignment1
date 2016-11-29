/*
  added a moon that orbits the planet
*/

class Moon
{
  int px = 600;
  int py = 500;
  PShape moon;
  float size = 20;
  int angle2 = 1;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    angle2 += 1;
    rotateY(radians(angle2));
    translate(px,py);
    moon = createShape(SPHERE, size);
    moon.setTexture(Moon);
    shape(moon); 
    popMatrix();
    
    //The size will increase or decrease
    if(keyPressed)
    {
      if(key == 'w' || key == 'W' )
      {
        size = size + 0.05;
      }
    if(key == 's' || key == 'S' )
      {
        size = size - 0.05;
      }
    }
  }
}