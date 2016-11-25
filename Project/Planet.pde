class Planet
{
  int x = 500;
  int y = 400;
  float angle=90;
  
  void display()
  {
    pushMatrix();
    fill(255);
    noStroke();
    translate(x,y); 
    rotateY(radians(angle));
    sphere(200);
    popMatrix();
    
    angle+=1;//the speed of the Globe
  }
}