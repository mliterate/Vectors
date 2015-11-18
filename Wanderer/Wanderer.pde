//declare variables
float  diam;
int count = 10;
PVector [] loc = new PVector [count];     //create array for loc, vel, and acc
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
int i =0;



void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (i =0; i<count; i++) {     //create a for statement for the array
    vel[i] = PVector .random2D();
    vel[i].mult(5);    

    loc[i] = new PVector (width/2, height/4);  

    diam = 100;
    noStroke(); 
    colorMode(HSB, 360, 100, 100, 100);  //change color mode
  }
}

void draw() {


  //draw background to cover previous frame
  fill((frameCount + 60*i)%360,180,360);   //chane the fill


  for (i =0; i<count; i++) {
 
    //draw ball
    ellipse(loc[i].x, loc[i].y, diam, diam);
    acc[i] =PVector .random2D();
    acc[i].mult(.1);


    //add velocity to position
    loc[i].add(vel[i]);

    vel[i].add(acc[i]); 
    vel[i].limit(1);




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