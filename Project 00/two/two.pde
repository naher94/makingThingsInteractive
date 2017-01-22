//Draw a circle with a stroke and a fill in the center of the screen

int cellSize = 210;

void setup() 
{
  size(4200, 2100);
  background(31,31,31);
  noLoop();
}

void draw() 
{
  fill(255, 0, 0);
  int circleSize = 10;
    for(int i = 0; i < 10; i++) //row
    {
      for(int j = 0; j < 20; j++) //col
      {
        ellipse(cellSize*j, cellSize*i, circleSize, circleSize); // (x, y, width, height)
        circleSize++;
      }
    }
}