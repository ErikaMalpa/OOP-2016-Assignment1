Circle ci;//for the circle

RightHandSide rhs;

// I create a variable "speed", it'll be useful to control the speed of stars.
float speed;

PFont f; //for the font

void setup() {
  fullScreen(P3D);
  //fill the array with a for loop;
  // running 800 times, it creates a new star using the Star() class.
  /*for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  */
  f = createFont("Bauhaus93",50,true);
  
  //circle
  ci = new Circle();
  
  //
  rhs = new RightHandSide();
}

void draw() {
  if(keyPressed)
  {
    if(key == 'w' || key == 'W' )
    {
      speed = speed + 0.5;
    }
    if(key == 's' || key == 'S' )
    {
      speed = speed - 0.1;
    }
   }

  background(0);
  
  ci.display();
  rhs.display();
  
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
/*    
  // I shift the entire composition,
  // moving its center from the top left corner to the center of the canvas.
  translate(width/2, height/2);
  // I draw each star, running the "update" method to update its position and
  // the "show" method to show it on the canvas.
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  */
}