/*
  The rotating circles by the radar and the big circles on both sides
*/ 
class Circle
{
  float r = 0;//to rotate the circle
  float a = 0;//to rotate circle
  float b = 0; // to rotate circle
  
  float csize = 350;
  float cy = 840;
  int angle1 = 1;
  int angle2 = 2;
  int angle3 = 3;
  
  void display()
  {
    smooth();
    fill(#9FE6E8);
    noStroke();
    
    angle1 += 1;
    angle2 += 2;
    angle3 += 3;
    
    fill(#41F7BC);
    pushMatrix();
    //circle going around the radar
    float circle_size = random(5,15);
    translate(width/2,850);
    rotate(b);
    ellipse(105,105,circle_size,circle_size);
    ellipse(115,115,10,10);
    rotate(r);
    ellipse(105,105,circle_size,circle_size);
    ellipse(115,115,circle_size,circle_size);
    rotate(a);
    ellipse(105,105,circle_size,circle_size);
    ellipse(115,115,circle_size,circle_size);
    popMatrix();
    
    noStroke();
    ellipse(200,900,60,60);
    fill(0);
    
    //to rotate the ellipses
    r = r + 1;
    a = a - 0.2;
    b = b - 0.2;
    
    //the speed and the fuel ellipses and arcs
    noStroke();
    ellipse(250,cy,csize,csize);//left thing circle
    ellipse(1670,cy,csize,csize);//right thing circle
    //for the left
    fill(#04ADB4);
    arc(250,cy,csize,csize, radians(angle1), radians(angle1+100));
    fill(#B3EFF2);
    arc(250,cy,csize - 30,csize - 30, radians(-angle2), radians(-angle2+100));
    //for the right
    fill(#04ADB4);
    arc(1670,cy,csize,csize, radians(-angle1), radians(-angle1+100));
    fill(#B3EFF2);
    arc(1670,cy,csize - 30,csize - 30, radians(angle2), radians(angle2+100));
    fill(#DDDED9);
    arc(250,cy,csize - 50,csize -50,radians(-angle3), radians(-angle3+60));
    arc(1670,cy,csize - 50,csize - 50, radians(angle3), radians(angle3+60));
    fill(#0DFFF1);
    ellipse(250,cy,csize - 100,csize - 100);//left circle
    ellipse(1670,cy,csize - 100,csize - 100);//right circle
    fill(#137463);
    arc(250,cy,csize - 100,csize - 100, 0, HALF_PI + QUARTER_PI);
    arc(1670,cy,csize - 100,csize - 100, 0, HALF_PI + QUARTER_PI);
    fill(0);   //middle circle
    ellipse(250,cy,csize - 230,csize - 230);//left circle
    ellipse(1670,cy,csize - 230,csize - 230);//right circle
  }
}