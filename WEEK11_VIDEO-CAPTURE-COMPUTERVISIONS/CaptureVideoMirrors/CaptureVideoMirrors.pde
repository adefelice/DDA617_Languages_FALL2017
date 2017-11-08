// Example 16-10: The scribbler mirror

import processing.video.*;

// Two global variables
float x;
float y;

// Variable to hold onto Capture object
Capture video;

void setup() {
  size(320, 240);
  background(255);

  // Start x and y in the center
  x = width/2;
  y = height/2;

  // Start the capture process
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();

  // Pick a new x and y
  float newx = constrain(x + random(-20, 20), 0, width-1);
  float newy = constrain(y + random(-20, 20), 0, height-1);
  //A new (x,y) location picked as the current (x,y), plus or minus
  //a random value. The new location is constrained within the window's pixels

  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);

  // Pick the color from the video, reversing x
  //an array for pixels
  color c = video.pixels[(width-1-midx) + midy*video.width];

  // Draw a line from x,y to the newx,newy
  stroke(c);
  strokeWeight(4);
  line(x, y, newx, newy);

  //save the new location in (x,y) in order
  //to start the process over again
  x = newx;
  y = newy;
}