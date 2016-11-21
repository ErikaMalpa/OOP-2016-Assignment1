//This is for the right hand side
class RightHandSide
{
 int x = 1800;
 int y1 = 150;
 int y2 = 350;
 int y3 = 550;
float angle=-90;

PFont f; 

  void display()
  {
    f = createFont("Bauhaus93",50,true);
  stroke(#41F7BC);
  fill(255);
  lights();
  pushMatrix();
  translate(x,y1); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 100 && mouseY <200)
    {
      fill(255);
      textSize(100);
      text("HI",width/2,height/2);
    }
  }
  
  pushMatrix();
  translate(x,y2); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  pushMatrix();
  translate(x,y3); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
 
  angle+=2; // speed
  if (angle>=360) {
    angle=0; // keep in degree
  }
  }
}