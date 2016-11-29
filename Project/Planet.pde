class Planet
{
  int px = 400;
  int py = 400;
  PShape globe;
  float size = 200;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    translate(px,py);
    globe = createShape(SPHERE, size);
    globe.setTexture(planet);
    shape(globe); 
    popMatrix();
    
    //The size will increase and decrease
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
    
    if(mouseX > 150 && mouseX < 550 && mouseY > 150 && mouseY < 650)
    {
        text("Planet H85fU",mouseX,mouseY);
    }
  }
}