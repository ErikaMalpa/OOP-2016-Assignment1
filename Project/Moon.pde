class Moon
{
  int px = 700;
  int py = 500;
  float angle=90;
  PShape moon;
  float size = 50;
  float distance = 10000;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    //rotateY(radians(angle));
    translate(px,py);
    moon = createShape(SPHERE, size);
    moon.setTexture(Moon);
    shape(moon); 
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