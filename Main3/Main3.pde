//import processing.sound.*;
//SoundFile sound;

float load = 0;//for the dots
PFont f; //for the font
float moveMent; //for the movement of the letter
float speed;//for the speed of the text
float r = 0;//to rotate the circle
float a = 0;//to rotate circle
float b = 0; // to rotate circle
float angle = 0;//for the spaceship to rotate
float angle2 = 0;//for the speed
float angle3 = 0;//for the fuel

void setup()
{
  size(1000,750);
  //for the font of the Program
  f = createFont("Bauhaus93",50,true);
  smooth();
  
  //load soundfile
  //sound = new SoundFile(this, "Robot_blip_2-Marianne_Gagnon-299056732.mp3");
  //sound.play();
}

void draw()
{
  background(0);
  
  //While loop for the lines and dots around the program
  int x = 10;
  int y = 10;
  while (x < load)
  {
    strokeWeight(2);
    stroke(#03F4FF);
    line(x, 10, x, 10);
    x = x + 10;
    line(y, 740, y, 740);
    y = y + 10;
    line(10,10,10,740);
    line(990,10,990,740);
    stroke(#F6FF03);
    strokeWeight(1);
    line(x,20,x,20);
    line(y,730,y,730);
    line(20,20,20,730);
    line(980,20,980,730);
  }
    //For the letters
    fill(#03F4FF);
    textAlign(CENTER);
    textSize(20);
    text("Spaceship Alpha Beta 3.5",moveMent,50);
    //textAlign(RIGHT);
    //textSize(15);
    //text("Welcome user 123",900,80);
    
    //To move the text
    moveMent = moveMent + speed;
    
    if (moveMent > 400)
    {
      speed = -10;
    }
    if (moveMent < 500)
    {
      speed = 10;
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
    
    //For the clock
    stroke(255);
    ellipse(width/2,600,150,150);

    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
 
    float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;

    float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
    
    //the minute
    stroke(#03F4FF);
    strokeWeight(1);
    line(100, 100, cos(s) * 72 + 100, sin(s) * 72 + 100);

    //the seconds
    stroke(#F6FF03);
    strokeWeight(2);
    line(100, 100, cos(m) * 60 + 100, sin(m) * 60 + 100);
    
    //the hour
    strokeWeight(4);
    line(100, 100, cos(h) * 50 + 100, sin(h) * 50 + 100);
    
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