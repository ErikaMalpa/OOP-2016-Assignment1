/*
  The rotating circles by the radar and the big circles on both sides
*/ 
class Circle
{
  float r = 0;//to rotate the circle
  float a = 0;//to rotate circle
  float b = 0; // to rotate circle
  
  void display()
  {
    fill(#41F7BC);
    pushMatrix();
    //circle
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
    
    //for the two circle
    float csize = 350;
    float cy = 840;
    
    noFill();
    stroke(#FCED3D);
    ellipse(250,cy,csize,csize);//left thing circle
    ellipse(1670,cy,csize,csize);//right thing circle
    fill(#9FE6E8);
    arc(250,cy,csize,csize, HALF_PI, PI);
    arc(250,cy,csize,csize, PI+QUARTER_PI, TWO_PI);
    arc(1670,cy,csize,csize, HALF_PI, PI);
    arc(1670,cy,csize,csize, PI+QUARTER_PI, TWO_PI);
    fill(#0DFFF1);
    ellipse(250,cy,csize - 100,csize - 100);//left rhing circle
    ellipse(1670,cy,csize - 100,csize - 100);//right thing circle
    fill(#137463);
    noStroke();
    arc(250,cy,csize - 100,csize - 100, 0, HALF_PI + QUARTER_PI);
    arc(1670,cy,csize - 100,csize - 100, 0, HALF_PI + QUARTER_PI);
    fill(0);
    ellipse(250,cy,csize - 200,csize - 200);//left thing circle
    ellipse(1670,cy,csize - 200,csize - 200);//right thing circle
  }
}