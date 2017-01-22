//Draw a circle with a stroke and a fill in the center of the screen

void setup() 
{
  size(640, 360);
  background(31,31,31);
  noLoop();
}

void draw() 
{
  strokeWeight(5);
  stroke(255,0,0);
  fill(0, 255, 0);
  ellipse(width/2, height/2, 60, 60); // (x, y, width, height)
  //Order matter for the above lines of code
  //style the objects then draw the objects
}