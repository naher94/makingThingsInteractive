//Build your own copy of Agar.io or Boomshine


//Global Vars
int playerSize = 50;


void setup() 
{
  size(800, 800); 
  background(#313131);
  food(30);
}

void draw() 
{ 
  //Build Player
  fill(#ffffff);
   ellipse(width/2, height/2, playerSize, playerSize);
  //Ramdomize consumables size and color
  //Mouse direction slides the consumables in the opposite direction
  //Collision Detection
  //absorb or die
}

void food(int foodNumb)
{
  for(int i = 0; i < foodNumb; i++)
  {
    int foodX = int(random(width));
    int foodY = int(random(height));
    int foodSize = int(random(10,100));
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    fill(r,g,b);
    ellipse(foodX, foodY, foodSize, foodSize);
  }
}