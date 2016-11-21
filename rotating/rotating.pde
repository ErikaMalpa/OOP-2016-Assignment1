int centerX = 440;
int centerY = 220;
 
float angle=-90;
 
void setup(){
  size(880,440,P3D);
}
 
void draw(){
  background(0);
  stroke(#41F7BC);
  fill(255);
  lights();
  pushMatrix();
  translate(centerX, centerY, 0); 
  rotateY(radians(angle));
  sphere(50);
  popMatrix();
 
  angle+=2; // speed
  if (angle>=360) {
    angle=0; // keep in degree
  }
}