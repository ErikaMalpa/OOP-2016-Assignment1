/* 
  OOP Assignment #1
  Course/Year : DT282/2
  Name:Erika Secillano
  Student No.:C15339871 
*/



  Circle ci;//for the circle
  RightHandSide rhs;//for the globes on the right hand side
  Text t;//For the text moving across
  Button bu;//for the 6 buttons
  BottomBackGround bbg;//for the bottom background
  PFont f; //for the font

  //sound
  import ddf.minim.*;
  AudioPlayer hover;
  AudioPlayer backgroundSong;
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
   backgroundSong = minim.loadFile("Arcade.wav");
   backgroundSong.loop();
   
   //for the moving text
   t = new Text();
   
   //for music
   bu = new Button();
   
   //for the bottombackground
   bbg = new BottomBackGround();
}

void draw()
{

  background(0);
  
  t.display();
  ci.display();
  rhs.display();
  rhs.clicks();
  bu.playbutton();
  bu.pressedbutton();
  bbg.display();
  

  fill(#03F4FF);
  textAlign(CENTER);
  textSize(20);
  text("Spaceship Alpha Beta 3.5",width/2,50);
    
  //for the sides around the screen
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
  
  //window"
  noFill();
  stroke(255);
  rect(25, 60, 1870,570, 7);
  
  //this is for the dots on both sides of the circle
  pushMatrix();
  stroke(#FEFF2C);
  //on the left
  for (int x = 30; x < 70; x = x+5) 
    {
      for (int y = 650;y < 1050; y = y+5) 
      {
        point(x, y);
      }
    }
    popMatrix();
    //on the right
    for (int h = 1850; h < 1890; h = h+5) 
    {
      for (int l = 650; l < 1050; l = l+5) 
      {
        point(h, l);
      }
    }
}