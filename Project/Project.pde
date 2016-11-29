/* 
  OOP Assignment #1
  Course/Year : DT282/2
  Name:Erika Secillano
  Student No.:C15339871 
*/

/*
  About this assignment:
  I decided to create a UI for a pilot of a spaceship
*/

  //Classes I used 
  Circle ci;//For the circle
  RightHandSide rhs;//for the globes on the right hand side
  Text t;//For the text moving across
  Button bu;//For the 6 buttons
  Radar rad;//For the radar
  SineWave sw;//For the sine wave
  Time ti;//For time and date
  Background bg;//For the background
  Clock cl;//For the clock
  Planet pl;//For the planet
  Square sq;//For the "rectangle" buttons
  Moon mo;//For the moon for the planet
  
  //Fonts and images used
  PFont f; //for the font
  PImage planet;//for the planet
  PImage sp;//For the backkground space
  PImage Moon;//for the moon
  
  //For the the speed and the fuel on the middle of the big circles on each side of the program
  //Also the distance from the "planet"
  float speed = 0;
  float fuel = 10000;
  int distance = 10000;

  //sound, I have used minim, all sounds used or resource used to make sounds are in the read me file
  import ddf.minim.*;
  AudioPlayer hover;//hover sound for the "RightHandSide" Globes
  AudioPlayer backgroundSong;//Arcade song
  AudioPlayer backgroundSong2;//Relaxing sound
  AudioPlayer laser;//Laser sound
  AudioPlayer radar;//Radar sound
  AudioPlayer intro;//This is the robot voice that says the welcome sentence when you open the program
  AudioPlayer stats;//The robot voice for the stats globe 3 of the right hand side
  AudioPlayer profile;//The robot voice for the profile globe 2 of the right hand side
  AudioPlayer mission;//The robot voice for the mission globe 1 of the right hand side
  AudioPlayer woobwoob;//backgground sound so it seems like the engine is on
  AudioPlayer background;//another background sound for space ambient
  Minim minim;

void setup() {
 
  //I decided it to be full screen because it looks better and used P3D for the globes
  fullScreen(P3D);
  
  //The font I decided to use
  f = createFont("Bauhaus93",50,true);
  
  //circle
  ci = new Circle();
  
  //Right hand side globes
  rhs = new RightHandSide();
  
  //sounds I used
   minim = new Minim(this);
   hover = minim.loadFile("click.mp3");
   laser = minim.loadFile("laser.wav");
   backgroundSong = minim.loadFile("Arcade.wav");
   backgroundSong2 = minim.loadFile("Ambient2.mp3");
   radar = minim.loadFile("Radar.wav");
   intro = minim.loadFile("intro.wav");
   stats = minim.loadFile("stats.wav");
   profile = minim.loadFile("profile.wav");
   mission = minim.loadFile("mission.wav");
   woobwoob = minim.loadFile("woobwoob.wav");
   background = minim.loadFile("background.wav");
   background.loop();
   woobwoob.loop();
   radar.loop();
   intro.play();
   
   loop();
   
   //for the moving text
   t = new Text();
   
   //for music
   bu = new Button();
   
   //for the radar
   rad = new Radar();
   
   //sinewave
   sw = new SineWave();
   
   //time
   ti = new Time();
   
   //for the background
   bg = new Background();
   
   //for the clock
   cl = new Clock();
   
   //For the planet in front
   pl = new Planet();
   
   //for the planet image
   planet = loadImage("planet.jpg");
  
   //for the square
   sq = new Square();
  
   //for the background image
   sp = loadImage("space.jpg");
   
   //moon display
   mo = new Moon();
  
   //for the moon
   Moon = loadImage("moon.jpg");
}


void draw()
{
  background(sp); 
  
  //This will print out the speed and the fuel to the program
  if(keyPressed)
  {
    if(key == 'w' || key == 'W' )
    {
      speed = speed + 0.5;
      fuel = fuel - 0.0005;
      distance --;
    }
    if(key == 's' || key == 'S' )
    {
      speed = speed - 0.1;
      fuel = fuel - 0.0005;
      distance ++;
    }
   }
  
  
  sw.display();
  pl.display();
  t.display();
  ci.display();
  rhs.display();
  rhs.clicks();
  bu.playbutton();
  bu.pressedbutton();
  bu.mouseover();
  bu.Button2();
  rad.show();
  bg.display();
  ti.display();
  sq.display();
  sq.design();
  mo.display();
  
  fill(255);
  textSize(20);
  text( speed, 250, 850);
  text( fuel, 1670, 850);
  text(distance,width/2,615);
  textSize(15);
  text("Distance left until destination is reached",width/2,600);
  

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
  
  //a "window"
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