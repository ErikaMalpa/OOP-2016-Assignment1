class Moon
{
  int px = 600;
  int py = 500;
  PShape moon;
  float size = 20;
  float distance = 10000;
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
    //
   /*fill(255);
   textSize(20);
   text("Distance till destination is reached = ",distance, width/2,300);
   }
    
    if(mouseX > 150 && mouseX < 550 && mouseY > 150 && mouseY < 650)
    {
        text("Planet H85U",mouseX,mouseY);
    }*/
  }
}
}