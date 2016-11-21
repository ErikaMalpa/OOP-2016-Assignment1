/* 
  OOP Assignment #1
  Course/Year : DT282/2
  Name:Erika Secillano
  Student No.:C15339871 
*/



Circle ci;//for the circle
RightHandSide rhs;//for the globes on the right hand side
Text t;//For the text moving across
PFont f; //for the font

//sound
  import ddf.minim.*;
  AudioPlayer hover;
  AudioPlayer press;
  Minim minim;

void setup() {
  fullScreen(P3D);
  f = createFont("Bauhaus93",50,true);
  
  //circle
  ci = new Circle();
  
  //
  rhs = new RightHandSide();
  
  //sounds
   minim = new Minim(this);
   hover = minim.loadFile("click.mp3");
   //press = minim.loadFile("press.mp3");
   
   //for the moving text
   t = new Text();
}

void draw()
{

  background(0);
  
  t.display();
  ci.display();
  rhs.display();
  rhs.clicks();
  

  fill(#03F4FF);
    textAlign(CENTER);
    textSize(20);
    text("Spaceship Alpha Beta 3.5",width/2,50);
    
   //for the sides 
  strokeWeight(2);
  stroke(#03F4FF);//blue
  line(10, 10, 1910, 10);//upper dot blue
  line(10, 1070, 1910, 1070);//lower dot blue
  line(10,10,10,1070);//left blue
  line(1910,10,1910,1070);//right blue
  stroke(#F6FF03);//yellow
  strokeWeight(1);
  line(20,20,1900,20);//upper dot yellow
  line(20,1060,1900,1060);//lower dot yellow
  line(20,20,20,1060);//left yellow
  line(1900,20,1900,1060);//right yellow
  
  //for the circles
  ellipse(230,870,370,370);//left thing circle
  ellipse(1690,870,370,370);//right thing circle
   
  fill(#03F4FF);
  noStroke();
  ellipse(230,870,300,300);//left thing circle
  ellipse(1690,870,300,300);//right thing circle
  
  //window"
    noFill();
    stroke(255);
    rect(25, 60, 1870,600, 7);
}