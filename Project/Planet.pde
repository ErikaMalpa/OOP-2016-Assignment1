class Planet
{
  int px = 400;
  int py = 400;
  float angle=90;
  PShape globe;
  
  boolean hover = false;
  boolean locked = false;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    //rotateY(radians(angle));
    translate(px,py);
    globe = createShape(SPHERE, 200);
    globe.setTexture(planet);
    shape(globe); 
    popMatrix();
    
    angle+=1;//the speed of the Globe
    
    if(mouseX > 150 && mouseX < 550 && mouseY > 150 && mouseY < 650)
    {
        text("Planet H85U",mouseX,mouseY);
    }
  }
}