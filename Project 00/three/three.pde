//Animate a circle so it chases your cursor, like a ghost chasing after Pac-Man

int cellSize = 10;
int circleX = 0;
int circleY = 0;
  
void setup() 
{
  size(800, 800);
  noStroke();
}

void draw() 
{
  background(31,31,31);
  fill(#FFFC00);
  if(circleX < mouseX)// circle is left of mouse
  {
    if(circleY < mouseY) //circle is below mouse
    {
      circleX = circleX + cellSize;
      circleY = circleY + cellSize;
    }
    else //cirle is above mouse
    {
      circleX = circleX + cellSize;
      circleY = circleY - cellSize;
    }
  }
  else// circle is right of mouse
  {
    if(circleY < mouseY) //circle is below mouse
    {
      circleX = circleX - cellSize;
      circleY = circleY + cellSize;
    }
    else //cirle is above mouse
    {
      circleX = circleX - cellSize;
      circleY = circleY - cellSize;
    }
  }
  ellipse(circleX, circleY, 10, 10);
}