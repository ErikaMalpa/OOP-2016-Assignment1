//C15339871
//Erika Secillano

PFont f;
Stars S;

void setup()
{
  fullScreen();
  f = loadFont("AgencyFB-Reg-48.vlw");
  textFont(f);
  
  //for the stars
  S = new Stars();
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
      text("Welcome", width/2, height/2);
    }
  }
  S.display();
}