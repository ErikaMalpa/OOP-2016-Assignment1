class Fuel_and_Speed
{
  
  float angle = 0;//for the spaceship to rotate
  float angle2 = 0;//for the speed
  float angle3 = 0;//for the fuel

 void display()
 {
   pushMatrix();//to prevent
   stroke(#03F4FF);
    //Pilot
    rotate(angle);
    line(200,200,800,200); 
    popMatrix();
    pushMatrix();//to prevent
    //speed
    rotate(angle2);
    line(100,720,100,600);
    popMatrix();
    //fuel
    pushMatrix();
    rotate(angle3);
    line(700,720,700,600);
    popMatrix();
 }
 void keyPressed()
{
  if ( key == CODED)
  {
    if (keyCode == RIGHT)
    {
      angle += .002;
    }
    else if (keyCode == LEFT)
    {
       angle -= .002;
    }
    if (keyCode == UP)
    {
      angle2 += .0001;//speed
      angle3 -= .00001;//fuel
    }
    else if (keyCode == DOWN)
    {
       angle2 -= .0001;//speed
       angle3 -= .00001;//fuel
    }
  }
}
}