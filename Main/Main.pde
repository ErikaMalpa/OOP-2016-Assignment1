PFont f;

//for text to change
boolean textHasBeenClicked = false;

void setup() {
  size(1000,1000);
  f = createFont("Arial",100,true); 
}

void draw() {
  background(#000203);

  textFont(f);       
  fill(#57C4F5);

  if (textHasBeenClicked) {
    textAlign(CENTER);
    text("Witamy",width/2,400); 
    textAlign(CENTER);
    text("proszę naciśnij enter",width/2,500); 
  }
  else
  {
    textAlign(CENTER);
    text("Welcome",width/2,400); 
    textAlign(CENTER);
    text("Please press enter",width/2,500);
  }

}

//For the mouse when it is pressed to change the text
void mousePressed()
{
  textHasBeenClicked = ! textHasBeenClicked;
}