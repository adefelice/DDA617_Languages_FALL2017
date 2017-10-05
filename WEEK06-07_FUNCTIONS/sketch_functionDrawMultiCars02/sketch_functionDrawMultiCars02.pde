// Multiple cars simplified with Functions - Arguments and parameters

// AGAIN - Where should functions be placed?
// You can define your functions anywhere in the code 
// outside of setup() and draw(). However, the convention 
// is to place your function definitions below draw().
//Note the code for drawing multiple cars doesnt do this!

void setup() {
  size(500, 500);
}

void draw() {  
  background(255);
  drawCar(100,100,64, color(200,200,0));
  drawCar(50,75,32, color(0,200,100));
  drawCar(80,175,40, color(200,0,0));
}

void drawCar(int x, int y, int thesize, color c) {

// Using a local variable "offset"
  int offset = thesize/4;
  
// Draw main car body - NOTE: the book's code is missing the rectangle (page 127)
  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(x,y,thesize,thesize/2);
  
// Draw four black wheels relative to center 
  fill(0);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
  
 
}