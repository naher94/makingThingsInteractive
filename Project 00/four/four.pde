//Draw three circles with different personalities that chase your cursor

//*******************************
//Code taken from Easing example for one personality

float x;
float y;
float easing = 0.05;

void setup() {
  size(640, 360); 
  noStroke();  
}

void draw() { 
  background(51);
  
  //easing
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  fill(#234e32);
  ellipse(x, y, 66, 66);
  
  //very wide
  fill(#FFFC00);
  ellipse(mouseX-100, mouseY-100, mouseY, 66);
  
  //pinned to right
  fill(mouseY, 0, 0);
  ellipse(width, mouseY, 66, 66);

}