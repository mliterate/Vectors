//declare variables
float  diam;

int count = 250;
PVector [] loc = new PVector [count];  //replaces both loc.x and y
PVector [] vel = new PVector [count];;  //replaces both velloc.x and vely
int i=0;


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  //loc.x = width/2;
  //y = height/2;
  for(i =0; i<count; i++){
  
  
  loc[i] = new PVector (width/2, height/2);
  vel[i] = PVector .random2D();

  diam = 80;
  //velX = random(-5, 5);
  //velY = random(-5, 5);
  }

}

void draw() {
  //draw background to cover previous frame
  
   
  background(0);
 for(i =0; i<count; i++){
  //draw ball
  ellipse(loc[i].x, loc[i].y, diam, diam);

  //add velocity to position
  loc[i].add(vel[i]);

  // loc.x += vel.x;
  //loc.y += vel.y;

  //bounce ball if it hits walls
  if (loc[i].x + diam/2 >= width) {
    vel[i].x = -abs(vel[i].x);    //if the ball hits the right wall, assign loc.x velocity the negative version of itself
  } else if (loc[i].x - diam/2 <= 0) {
    vel[i].x = abs(vel[i].x);     //if the ball hits the left wall, assign loc.x velocity the positive version of itself
  }
  if (loc[i].y + diam/2 >= height) {
    vel[i].y = -abs(vel[i].y);
  } else if (loc[i].y - diam/2 <= 0) {
    vel[i].y = abs(vel[i].y);
  }
}
}