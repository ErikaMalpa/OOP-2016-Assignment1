class Planet
{
  int px = width/2;
  int py = 400;
  float angle=90;

  PShape globe;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    rotateY(radians(angle));
    globe = createShape(SPHERE, 200);
    globe.setTexture(planet);
    shape(globe);
    translate(px,py); 
    popMatrix();
    
    angle+=1;//the speed of the Globe
  }
}