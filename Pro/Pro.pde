PFont f;


void setup()
{
  fullScreen();
  f = loadFont("AgencyFB-Reg-48.vlw");
  textFont(f);
}

void draw()
{
  if(keyPressed)
  {
    if (key == ENTER)
    {
      background(0);
    }
    else
    {
      background(255);
      textAlign(CENTER);
      fill(0);
      textSize(200);
      text("Please press enter", width/2, height/2);
    }
  }
}