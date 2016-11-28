class Planet
{
  int px = 400;
  int py = 400;
  float angle=90;
  PShape globe;
  float size = 200;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    //rotateY(radians(angle));
    translate(px,py);
    globe = createShape(SPHERE, size);
    globe.setTexture(planet);
    shape(globe); 
    popMatrix();
    
    angle+=1;//the speed of the Globe
    
    //This will print out the speed and the fuel to the program
  if(keyPressed)
  {
    if(key == 'w' || key == 'W' )
    {
      size = size + 0.05;
      distance --;
    }
    if(key == 's' || key == 'S' )
    {
      size = size - 0.05;
      distance ++;
    }
   }
    
    if(mouseX > 150 && mouseX < 550 && mouseY > 150 && mouseY < 650)
    {
        text("Planet H85U",mouseX,mouseY);
    }
  }
}