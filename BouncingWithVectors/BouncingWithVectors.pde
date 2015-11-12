//declare variables
float  diam;


PVector loc;  //replaces both loc.x and y
PVector vel;  //replaces both velloc.x and vely

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  //loc.x = width/2;
  //y = height/2;
  loc = new PVector (width/2,height/2);
  vel = new PVector (random(-5,5),random(-5,5));
  
  
  diam = 80;
  //velX = random(-5, 5);
 //velY = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
loc.add(vel);
 
 // loc.x += vel.x;
  //loc.y += vel.y;

  //bounce ball if it hits walls
  if (loc.x + diam/2 >= width) {
    vel.x = -abs(vel.x);    //if the ball hits the right wall, assign loc.x velocity the negative version of itself
  } else if (loc.x - diam/2 <= 0) {
    vel.x = abs(vel.x);     //if the ball hits the left wall, assign loc.x velocity the positive version of itself
  }
  if (loc.y + diam/2 >= height) {
    vel.y = -abs(vel.y);
  } else if (loc.y - diam/2 <= 0) {
    vel.y = abs(vel.y);
  }
}