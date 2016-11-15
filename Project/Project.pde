//Clock c;//for the buttons

PFont f; //for the font
float moveMent; //for the movement of the letter
float speed;//for the speed of the text
float[] x = new float[100];
float[] y = new float[100];
float[] speeds = new float[100];

void setup()
{
  fullScreen(P3D);
  f = createFont("Bauhaus93",50,true);
  
  //for the stars
  int i = 0;
  
  //for the clock
  //c = new Clock();
  
  while(i<100)
  {
  x[i] = random (460,1900);
  y[i] = random (60,660);
  speeds[i] = random(1,5);
  i = i + 1;
  }
}

void draw()
{
  background(0);
  
  //c.display();
  
  lights();
  stroke(255);
  //star
  {
    int i = 0;
    while(i < 100)
    {
    point(x[i],y[i]);
  
    x[i] = x[i] - speeds[i];
    if( x[i] < 0)
    {
      x[i] = width;
    }
    i = i + 1;
  }
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
    
    if (moveMent > 950)
    {
      speed = -10;
    }
    if (moveMent < 970)
    {
      speed = 10;
    }
    
    //While loop for the lines and dots around the program
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
    rect(25, 60, 1870,600, 7);
    
    ellipse(230,870,370,370);//left thing circle
    ellipse(1690,870,370,370);//right thing circle
    
    fill(#03F4FF);
    noStroke();
    ellipse(230,870,300,300);//left thing circle
    ellipse(1690,870,300,300);//right thing circle
    
    fill(#FBFF2C);
    arc(230, 870, 200, 200, 0, PI+QUARTER_PI, OPEN);//left
    arc(1690,870, 200, 200, 0, PI+QUARTER_PI, OPEN);//right
    fill(#3BEA80);
    arc(230, 870, 100, 100, PI+QUARTER_PI, TWO_PI);//left
    arc(1690, 870, 100, 100, PI+QUARTER_PI, TWO_PI);//left
    
    noFill();
    stroke(255);
    translate(500, height * 0.50, 50);
    sphere(50);
}