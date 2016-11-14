class Circle
{
  float r = 0;//to rotate the circle
  float a = 0;//to rotate circle
  float b = 0; // to rotate circle
  
  void display()
  {
    pushMatrix();
    //circle
    float circle_size = random(5,15);
    translate(600,600);
    rotate(b);
    ellipse(60,60,circle_size,circle_size);
    rotate(r);
    ellipse(50,50,circle_size,circle_size);
    ellipse(70,70,circle_size,circle_size);
    rotate(a);
    ellipse(50,50,circle_size,circle_size);
    ellipse(70,70,circle_size,circle_size);
    popMatrix();
    
    fill(0);
    arc(150, 730, 200, 200, -PI, 0);
    arc(850, 730, 200, 200, -PI, 0);
    
    //to rotate the ellipse
    r = r + 0.1;
    a = a - 0.2;
    b = b + 0.2;
  }
}