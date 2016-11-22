//This is for the right hand side
//source for the image https://upload.wikimedia.org/wikipedia/commons/f/fd/Alien_head_2.jpg
//source for sounds hover - http://soundbible.com/1669-Robot-Blip-2.html
//click - https://www.freesound.org/people/kickhat/sounds/264447/
//arcade - https://www.freesound.org/people/joshuaempyre/sounds/251461/
class RightHandSide
{
 int x = 1800;
 int y1 = 150;
 int y2 = 350;
 int y3 = 550;
 float angle=-90;
  PImage img;
  
  void display()
  {
    pushMatrix();
    img = loadImage("Alien_head_2.jpg");
    
  stroke(#41F7BC);
  //noStroke();
  fill(255);
  lights();
  pushMatrix();
  translate(x,y1); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  pushMatrix();
  stroke(#41F7BC);
  //noStroke();
  translate(x,y2); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
  
  pushMatrix();
  stroke(#41F7BC);
  //noStroke();
  translate(x,y3); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
 
  angle+=1; // speed
  if (angle>=360) {
    angle=0; // keep in degree
  }
  popMatrix();
  }
  
  void clicks()
  {
    //1st
    pushMatrix();
  if(mouseX > 1700 && mouseX < 1900 && mouseY > 100 && mouseY <200)
    {
      stroke(#F2FA23);
      line(1650,150,1740,150);
      textSize(30);
      text("Mission",1650,150);
      hover.rewind();
      hover.play();
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
      
     //press.rewind();
     // press.play();
    }
  }
    
    //2nd
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
      text("LOCATION:Planet H85fU 89''09''12",960,490);
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
      hover.rewind();
      hover.play();
    }
   popMatrix();
    
    //3rd
    if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 500 && mouseY <600)
    {
      fill(255);
      textSize(30);
      text("Spaceship Battery : 50%",960,300);
      text("Oxygen Level : 70%",960,340);
      text("Compression : Normal",960,380);
      text("Water tank : 45%",960,420);
    }
  }
  
   pushMatrix();
  if(mouseX > 1700 && mouseX < 1900 && mouseY > 500 && mouseY <600)
    {
      stroke(#F2FA23);
      line(1650,550,1740,550);
      textSize(30);
      text("Stats",1650,550);
      hover.rewind();
      hover.play();
    }
   popMatrix();
  }
}