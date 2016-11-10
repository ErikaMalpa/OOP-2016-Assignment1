PFont f;

void setup() {
  size(1000,1000);
  f = createFont("Arial",60,true); 
}

void draw() {
  background(255);

  textFont(f);       
  fill(0);

  textAlign(CENTER);
  text("Welcome",width/2,450); 
  textAlign(CENTER);
  text("Please press enter",width/2,500); 
  

}