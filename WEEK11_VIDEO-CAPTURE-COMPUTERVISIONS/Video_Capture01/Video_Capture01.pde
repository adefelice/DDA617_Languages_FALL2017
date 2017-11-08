//Video Capture, import, two strategies

//import the video processing library
import processing.video.*;

//declare the capture object
Capture video;

// the capture event is a function and belongs in its
//own block outside of setup() and draw()
void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size(320,240);
  //initialize the Capture object
  video = new Capture(this,320,240);
  //start the capture process
  video.start(); //you want to begin capturing right in setup,
  // but start() is its own method, and you can start to capture another time - keypressed
}

// read/display the video image from the camera.
//Think of a Capture object as a PImage, and can be utilized
//the same a PImage object
void draw() {
  image(video,0,0);
  }
  