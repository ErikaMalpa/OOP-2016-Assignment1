

class Button
{
  float x = 500;
  float y = 820;
  float size = 80;
  float size2 = 50;
  
  int[] storage = { 90,90,36,72,72};//for the pie chart
  
  void playbutton()
  {
    fill(#1CFFF9);
    ellipse(x,y,size,size);
    ellipse(x + 100, y , size, size);
    ellipse(x + 200, y , size, size);
    ellipse(x + 700, y , size, size);
    ellipse(x + 800, y , size, size);
    ellipse(x + 900, y , size, size);
    
    fill(0);
    ellipse(x,y,size2,size2);
    ellipse(x + 100, y , size2, size2);
    ellipse(x + 200, y , size2, size2);
    ellipse(x + 700, y , size2, size2);
    ellipse(x + 800, y , size2, size2);
    ellipse(x + 900, y , size2, size2);
  }
  
  void pressedbutton()
  {
    if (mousePressed)
    {
      if(mouseX > 460 && mouseX < 540 && mouseY > 790 && mouseY < 850)//this would be the laser
      {
        stroke(#FF1212);
        line(940,height/2,600,625);
        line(980,height/2,1320,625);
        laser.rewind();
        laser.play();
      }
       if(mouseX > 460 + 100 && mouseX < 540 + 100 && mouseY > 790 && mouseY < 850)//this would be the normal gun
      {
        Storages(400,storage);
        textSize(30);
        text("Storage",width/2,180);
        fill(#FCFF58);
        textSize(15);
        text("Minerals 25%",850,450);
        text("Available 25%",1050,450);
        text("Food 20% ",920,300);
        text("Missiles 20%",1050,350);
        text("HMG Ammo 10%",850,380);
      }
            if(mouseX > 460 + 200 && mouseX < 540 + 200 && mouseY > 790 && mouseY < 850)
      {
        
      }
            if(mouseX > 460 + 700 && mouseX < 540 + 700 && mouseY > 790 && mouseY < 850)
      {
        backgroundSong2.loop();
      }
            if(mouseX > 460 + 800 && mouseX < 540 + 800 && mouseY > 790 && mouseY < 850)
      {
        backgroundSong.pause();
        backgroundSong2.pause();
      }
            if(mouseX > 460 + 900 && mouseX < 540 + 900 && mouseY > 790 && mouseY < 850)
      {
        backgroundSong.loop();
      }
    }
    //for the line surrounding the 6 circles
    pushMatrix();
    fill(#00F4FF);
    line(x - 70, y - 50, x + 240, y - 50);//left top
    line(x - 70, y + 50, x + 240, y + 50);//left bottom
    line(x + 660, y - 50, x + 980, y - 50);//right top
    line(x + 660, y + 50, x + 980, y + 50);//right bottom
    popMatrix();
  }
  
  //this is for the pie chart
  void Storages(float diameter, int[] data)
  {
    float lastAngle = 0;
    for (int i = 0; i < data.length; i++) 
    {
      float gray = map(i, 0, data.length, 0, 365);
      fill(gray);
      arc(960,400, diameter, diameter, lastAngle, lastAngle+radians(storage[i]));
      lastAngle += radians(storage[i]);
    }
  }
 
  //Planning to add some random circles
  void Button2()
  { 
    int cy = 30;
    int csize = 30;
    noStroke();
    fill(#F7F3D2);
    ellipse(400,cy,csize,csize);//left thing circle
    fill(#80F0E5);
    arc(400,cy,csize,csize, HALF_PI, PI);
    arc(400,cy,csize,csize, PI+QUARTER_PI, TWO_PI);
  }
}