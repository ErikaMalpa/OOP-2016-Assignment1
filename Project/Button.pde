/*
  This class is for the 6 buttons on the screen
  Button 1 = This is the laser button, I have used lines to act as a laser and of course I added sound to make it more "realistic".
  Button 2 = This is a pie chart that shows the user's "Storage" in their "spaceship", it is a fixed value and cannot be changed unless you change it here.
  Button 3 = This is for the clock.
  Button 4 = This button will play a relaxing song.
  Button 5 = This button will stop the robot voices from the "RightHandSide" class and also button's 4 and 6 songs.
  Button 6 = This button will play an arcade song.
*/

class Button
{
  float x = 500;
  float y = 820;
  float size = 80;
  float size2 = 50;
  
  int[] storage = { 90,90,36,72,72};//for the pie chart
  
  void playbutton()
  {
    //left side 3 buttons
    fill(#1CFFF9);
    ellipse(x,y,size,size);
    ellipse(x + 100, y , size, size);
    ellipse(x + 200, y , size, size);
    ellipse(x + 700, y , size, size);
    ellipse(x + 800, y , size, size);
    ellipse(x + 900, y , size, size);
    
    //right side 3 buttons
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
      if(mouseX > 460 && mouseX < 540 && mouseY > 790 && mouseY < 850)//this would be the laser and the first button, this will play a laser sound as well
      {
        stroke(#FF1212);
        line(940,height/2,600,625);
        line(980,height/2,1320,625);
        laser.rewind();
        laser.play();
        textSize(10);
        text("Laser",mouseX,mouseY);
      }
       if(mouseX > 460 + 100 && mouseX < 540 + 100 && mouseY > 790 && mouseY < 850)//this would show the pie chart storage
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
            if(mouseX > 460 + 200 && mouseX < 540 + 200 && mouseY > 790 && mouseY < 850)//this will display the clock
      { 
        cl.display();
      }
            if(mouseX > 460 + 700 && mouseX < 540 + 700 && mouseY > 790 && mouseY < 850)//this will play the relaxing song
      {
        backgroundSong2.loop();
      }
            if(mouseX > 460 + 800 && mouseX < 540 + 800 && mouseY > 790 && mouseY < 850)//this will pause the song from button 4 and 6 and als the "RightHandSide" class's robot voice.
      {
        backgroundSong.pause();
        backgroundSong2.pause();
        mission.pause();
        stats.pause();
        profile.pause();
      }
            if(mouseX > 460 + 900 && mouseX < 540 + 900 && mouseY > 790 && mouseY < 850)//this will play an arcade song
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
  
  //Just mouse over, if user is hovering the blue circles, it will show show some text for explanation
  void mouseover()
  {
    if(mouseX > 460 && mouseX < 540 && mouseY > 790 && mouseY < 850)//this would be the laser and the first button, this will play a laser sound as well
      {
        textSize(15);
        text("Laser",mouseX,mouseY);
      }
       if(mouseX > 460 + 100 && mouseX < 540 + 100 && mouseY > 790 && mouseY < 850)//this would display Storage
       {
        textSize(15);
        text("Storage",mouseX,mouseY);
      }
            if(mouseX > 460 + 200 && mouseX < 540 + 200 && mouseY > 790 && mouseY < 850)//this will display the clock
      { 
        textSize(15);
        text("Clock",mouseX,mouseY);
      }
            if(mouseX > 460 + 700 && mouseX < 540 + 700 && mouseY > 790 && mouseY < 850)//this will play the relaxing song
      {
        textSize(15);
        text("Relaxing Song",mouseX,mouseY);
      }
            if(mouseX > 460 + 800 && mouseX < 540 + 800 && mouseY > 790 && mouseY < 850)//this will pause the song from button 4 and 6 and als the "RightHandSide" class's robot voice.
      {
        textSize(15);
        text("Pause Songs and Robot",mouseX,mouseY);
      }
      if(mouseX > 460 + 900 && mouseX < 540 + 900 && mouseY > 790 && mouseY < 850)//this will play an arcade song
      {
        textSize(15);
        text("Arcade Song",mouseX,mouseY);
      }
  }
 
  //This is for the little circles at the bottom
  void Button2()
  {
    int csize = 5;
    //left
    for (int x = 440; x < 750; x = x+10) 
    {
      for (int y = 900;y < 1050; y = y+10) 
      {
        noStroke();
        fill(random(0,255));
        ellipse(x,y,csize,csize);
      }
    }
    //right
    for (int x = 1170; x < 1490; x = x+10) 
    {
      for (int y = 900;y < 1050; y = y+10) 
      {
        noStroke();
        fill(random(0,255));
        ellipse(x,y,csize,csize);
      }
    }
  }
}