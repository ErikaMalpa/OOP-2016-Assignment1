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
      if(mouseX > 460 && mouseX < 540 && mouseY > 790 && mouseY < 850)
      {
        fill(#F58F3B);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
            if(mouseX > 460 + 100 && mouseX < 540 + 100 && mouseY > 790 && mouseY < 850)
      {
        fill(255);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
            if(mouseX > 460 + 200 && mouseX < 540 + 200 && mouseY > 790 && mouseY < 850)
      {
        fill(255);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
            if(mouseX > 460 + 700 && mouseX < 540 + 700 && mouseY > 790 && mouseY < 850)
      {
        fill(255);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
            if(mouseX > 460 + 800 && mouseX < 540 + 800 && mouseY > 790 && mouseY < 850)
      {
        fill(255);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
            if(mouseX > 460 + 900 && mouseX < 540 + 900 && mouseY > 790 && mouseY < 850)
      {
        fill(255);
        textSize(20);
        text("PROFILE:",960,140);
        text("NAME: MIKO (A.K.A. = MIKE)",960,330);
        text("EYE COLOUR: Black",960,370);
        text("SKIN COLOUR:Grey",960,410);
        text("HEIGHT:5'0",960,450);
      }
    }
  }
}