float load = 0;//for the dots
PFont f; //for the font
float moveMent; //for the movement of the letter
float speed;//for the speed of the text
float r = 0;//to rotate the circle
float a = 0;//to rotate circle
float b = 0; // to rotate circle

void setup()
{
  size(1000,750);
  //for the font of the Program
  f = createFont("Bauhaus93",50,true);
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
    textAlign(RIGHT);
    textSize(15);
    text("Welcome user 123",900,80);
    
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
    
    //to rotate the ellipse
    r = r + 0.1;
    a = a - 0.2;
    b = b + 0.3;
}