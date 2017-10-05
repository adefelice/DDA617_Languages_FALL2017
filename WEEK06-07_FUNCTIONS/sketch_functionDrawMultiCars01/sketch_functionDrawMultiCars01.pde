int x = 100; // x location
int y = 100; // y location
int thesize = 64; // the size of car
int offset = thesize/4; // (16) position of wheels relative to the car

void setup() {
  size(200, 200);
  background(255);
}
//Draw main car body 
void draw() {  
  rectMode(CENTER);
  stroke(0);
  fill(175);
  rect(x,y,thesize,thesize/2);

//Draw 4 wheels  
  fill(0);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);

// To draw another car, I'll repeat the above code with different values.

int x = 50;
int y = 50;
int thesize = 24;
int offset = thesize/4; // = 6

//draw car 2 body
  rectMode(CENTER);
  stroke(0);
  fill(175);
  rect(x,y,thesize,thesize/2);

//draw car 2's four wheels  
  fill(0);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
}