//for this sketch, everyone gets a red cup!
//look at every single pixel. is that pixel red?
//is it really red? is it more red than a pixel next to it?

import processing.video.*;

Capture video;

color trackColor; 
float threshold = 25; //25 +/- around what ever color you choose to track

void setup() {
  size(640, 360);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[3]);
  video.start();
  trackColor = color(255, 0, 0);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  video.loadPixels();
  image(video, 0, 0);

  //threshold = map(mouseX, 0, width, 0, 100);
  threshold = 80;

  float avgX = 0; //avg location
  float avgY = 0; //avg location

  int count = 0; //how many pixels are red?

  //the core algorithm for braodly speaking
  //all computer vision starts with this
  //begin loop to walk through ever pixel
  //Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x++ ) {
    for (int y = 0; y < video.height; y++ ) {
      int loc = x + y * video.width;
      // What is current color?
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      //track color is the one you're looking for!
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      //Using Euclidean distance to compare colors
      float d = distSq(r1, g1, b1, r2, g2, b2);
      
      //if current color is more similar to tracked color
      //closest color, save current location and current
      if (d < threshold*threshold) {
        stroke(255);
        strokeWeight(1);
        point(x, y);
        avgX += x; //add X location in
        avgY += y; //add X location in
        count++; //i increase the count
      }
    }
  }

  // We only consider the color found if its color distance is less than 10. 
  // This threshold of 10 is arbitrary and you can adjust this number
  // depending on how accurate you require the tracking to be.
  if (count > 0) { 
    avgX = avgX / count;
    avgY = avgY / count;
    // Draw a circle at the tracked pixel
    fill(255);
    strokeWeight(4.0);
    stroke(0);
    ellipse(avgX, avgY, 24, 24);
  }
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];
}