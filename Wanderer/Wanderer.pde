//declare variables
float  diam;
int count =2;
PVector [] loc = new PVector [count];
PVector [] vel = new PVector [count];
int i =0;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (i =0; i<count; i++) {


    loc[i] = new PVector (width/2, height/4);
    vel[i] = PVector .random2D();
    diam = 100;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  for (i =0; i<count; i++) {
    //draw ball
    ellipse(loc[i].x, loc[i].y, diam, diam);


    //add velocity to position
    loc[i].add(vel[i]);

    //wrap the ball's position
    if (loc[i].x  >= width) {
      loc[i].x = 0;
    } else if (loc[i].x  <= 0) {
      loc[i].x = width;
    }
    if (loc[i].y  >= height) {
      loc[i].y =0;
    } else if (loc[i].y  <= 0) {
      loc[i].y = height ;
    }
  }
}