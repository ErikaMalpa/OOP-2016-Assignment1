//This is for the right hand side
//source for the image https://upload.wikimedia.org/wikipedia/commons/f/fd/Alien_head_2.jpg
//source for sounds blip - http://soundbible.com/1669-Robot-Blip-2.html
class RightHandSide
{
 int x = 1800;
 int y1 = 150;
 int y2 = 350;
 int y3 = 550;
  float angle=-90;

  PFont f; 

  PImage img;
  
  void display()
  {
    f = createFont("Bauhaus93",50,true);
    img = loadImage("Alien_head_2.jpg");
    
    //sounds
    //soundfile = new SoundFile(this,"click.mp3");
    //minim = new Minim(this);
   // click = minim.loadFile("click.mp3",2048);
    
  stroke(#41F7BC);
  fill(255);
  lights();
  pushMatrix();
  translate(x,y1); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  pushMatrix();
  if(mouseX > 1700 && mouseX < 1900 && mouseY > 100 && mouseY <200)
    {
      stroke(#F2FA23);
      line(1650,150,1740,150);
      textSize(30);
      text("Mission",1650,150);
    }
   popMatrix();
  
   if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 100 && mouseY <200)
    {
      fill(0);
      stroke(255);
      ellipse(width/2,height/2,60,60);
      fill(255);
      textSize(30);
      text("Mission #350",960,300);
      text("-Go to Planet H85fU",960,350);
      text("-Meet Puma the Maiden",960,400);
      text("-Gather weapons",960,450);
      text("-Eliminate Miko",960,500);
    }
  }
  
  pushMatrix();
  if(mouseX > 1700 && mouseX < 1900 && mouseY > 100 && mouseY <200)
    {
      stroke(#F2FA23);
      line(1650,150,1740,150);
      textSize(30);
      text("Mission",1650,150);
      click.rewind();
      click.play();
    }
   popMatrix();
  
  pushMatrix();
  stroke(#41F7BC);
  translate(x,y2); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 300 && mouseY <400)
    {
      fill(255);
      textSize(20);
      text("PROFILE:",960,140);
      text("NAME: MIKO (A.K.A. = MIKE)",960,330);
      text("EYE COLOUR: Black",960,370);
      text("SKIN COLOUR:Grey",960,410);
      text("HEIGHT:5'0",960,450);
      image (img, 890,150);
    }
  }
  
  pushMatrix();
  if(mouseX > 1700 && mouseX < 1900 && mouseY > 300 && mouseY <400)
    {
      stroke(#F2FA23);
      line(1650,350,1740,350);
      textSize(30);
      text("Target",1650,350);
      click.rewind();
      click.play();
    }
   popMatrix();
  
  pushMatrix();
  stroke(#41F7BC);
  translate(x,y3); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 500 && mouseY <600)
    {
      fill(255);
      textSize(100);
      text("HI",width/2,height/2);
    }
  }
 
  angle+=1; // speed
  if (angle>=360) {
    angle=0; // keep in degree
  }
  }
}