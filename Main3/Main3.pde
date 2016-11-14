//import processing.sound.*;
//SoundFile sound;

Clock c;//for the buttons
Letters l;//for the letters

float load = 0;//for the dots
PFont f; //for the font
float r = 0;//to rotate the circle
float a = 0;//to rotate circle
float b = 0; // to rotate circle
float angle = 0;//for the spaceship to rotate
float angle2 = 0;//for the speed
float angle3 = 0;//for the fuel

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
  
  //load soundfile
  //sound = new SoundFile(this, "Robot_blip_2-Marianne_Gagnon-299056732.mp3");
  //sound.play();
}

void draw()
{
  background(0);
  l.display();
  //While loop for the lines and dots around the program
  int x = 10;
  int y = 10;
  while (x < load)
  {
    strokeWeight(2);
    stroke(#03F4FF);//blue
    line(x, 10, x, 10);//upper dot blue
    x = x + 10;
    line(y, 1070, y, 1070);//lower dot blue
    y = y + 10;
    line(10,10,10,1070);//left blue
    line(1910,10,1910,1070);//right blue
    stroke(#F6FF03);//yellow
    strokeWeight(1);
    line(x,20,x,20);//upper dot yellow
    line(y,1060,y,1060);//lower dot yellow
    line(20,20,20,1060);//left yellow
    line(1900,20,1900,1060);//right yellow
  }
    //the speed in which the dots go to the right
    load = load + 10;
    
    pushMatrix();
    //circle
    float circle_size = random(5,15);
    translate(600,600);
    rotate(b);
    ellipse(60,60,circle_size,circle_size);
    rotate(r);
    ellipse(50,50,circle_size,circle_size);
    ellipse(70,70,circle_size,circle_size);
    rotate(a);
    ellipse(50,50,circle_size,circle_size);
    ellipse(70,70,circle_size,circle_size);
    popMatrix();
    
    fill(0);
    arc(150, 730, 200, 200, -PI, 0);
    arc(850, 730, 200, 200, -PI, 0);
    
    //to rotate the ellipse
    r = r + 0.1;
    a = a - 0.2;
    b = b + 0.2;
    
    pushMatrix();//to prevent
    //Pilot
    rotate(angle);
    line(200,200,800,200); 
    popMatrix();
    pushMatrix();//to prevent
    //speed
    rotate(angle2);
    line(100,720,100,600);
    popMatrix();
    //fuel
    pushMatrix();
    rotate(angle3);
    line(700,720,700,600);
    popMatrix();
    
    c.display();
    
}

void keyPressed()
{
  if ( key == CODED)
  {
    if (keyCode == RIGHT)
    {
      angle += .002;
    }
    else if (keyCode == LEFT)
    {
       angle -= .002;
    }
    if (keyCode == UP)
    {
      angle2 += .0001;//speed
      angle3 -= .00001;//fuel
    }
    else if (keyCode == DOWN)
    {
       angle2 -= .0001;//speed
       angle3 -= .00001;//fuel
    }
  }
}