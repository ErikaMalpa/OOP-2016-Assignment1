//import processing.sound.*;
//SoundFile sound;

Clock c;//for the buttons
Letters l;//for the letters
Lines li;//for the lines
Circle ci;//for the circle
Fuel_and_Speed fs;//
Window w;//

PFont f; //for the font

void setup()
{
  fullScreen();
  //for the font of the Program
  f = createFont("Bauhaus93",50,true);
  smooth();
  
  //for the clock
  c = new Clock();
  
  //letters
  l = new Letters();
  
  //lines
  li = new Lines();
  
  //circle
  ci = new Circle();
  
  //Fuel and speed
  fs = new Fuel_and_Speed();
  
  //window
  w = new Window();
  //load soundfile
  //sound = new SoundFile(this, "Robot_blip_2-Marianne_Gagnon-299056732.mp3");
  //sound.play();
}

void draw()
{
  background(0);
  w.display();
  l.display();
  li.display();
  ci.display();
  c.display();
  fs.display();
}