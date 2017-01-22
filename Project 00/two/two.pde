//Draw 200 circles of increasing size and color value in a rectangular grid

int cellSize = 210;

void setup() 
{
  size(4200, 2100);
  background(31,31,31);
  noLoop();
}

void draw() 
{
  int circleSize = 10;
    for(int i = 0; i < 10; i++) //row
    {
      for(int j = 0; j < 20; j++) //col
      {
        fill(circleSize, 0, 0);
        ellipse(cellSize*j, cellSize*i, circleSize, circleSize); // (x, y, width, height)
        circleSize++;
      }
    }
}