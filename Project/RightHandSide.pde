/*
  This is for the right hand side of the "window", it has 3 globes that is going around
  Globe 1 = Shows mission for the user and also reads it to user
  Globe 2 = Shows Target for the mission and some information about the target, it also reads it to the user
  Globe 3 = Shows the status of the ship
*/

class RightHandSide
{
  int x = 1800;
  int y1 = 150;
  int y2 = 350;
  int y3 = 550;
  float angle=90;
  PImage img; //This will load the alien Image
  
  void display()
  {
    pushMatrix();
    img = loadImage("Alien_head_2.jpg");
    
    stroke(#41F7BC);
    fill(255);
    lights();
    pushMatrix();
    translate(x,y1); 
    rotateY(radians(angle));
    sphere(50);
    popMatrix();
  
    pushMatrix();
    stroke(#41F7BC);
    translate(x,y2); 
    rotateY(radians(angle));
    sphere(50);
    popMatrix();
    
    pushMatrix();
    stroke(#41F7BC);
    translate(x,y3); 
    rotateY(radians(angle));
    sphere(50);
    popMatrix();
 
    angle+=1;//the speed of the Globe
    
    popMatrix();
}
  
  void clicks()
  {
    //1st Globe
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
      mission.rewind();
      mission.play();
    }
  }
    
    //2nd Globe
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
      image (img, 890,150); //breed= backhead dominated alien
      profile.rewind();
      profile.play();
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
    
    //3rd Globe
    if (mousePressed)
  {
    if(mouseX > 1700 && mouseX < 1900 && mouseY > 500 && mouseY <600)
    {
      fill(255);
      textSize(30);
      text("Spaceship Energy : 50%",960,300);
      text("Oxygen Level : 70%",960,340);
      text("Compression : Normal",960,380);
      text("H20 : 45%",960,420);//shield
      stats.rewind();
      stats.play();
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