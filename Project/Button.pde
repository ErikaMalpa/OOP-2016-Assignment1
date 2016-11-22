//for the laser = https://www.freesound.org/people/jeremysykes/sounds/341235/
//for the ambient2 son = https://www.freesound.org/people/cheesepuff/sounds/110215/

class Button
{
  float x = 500;
  float y = 820;
  float size = 80;
  float size2 = 50;
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
  }
}