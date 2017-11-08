//CAPTURE - ADJUST BRIGHTNESS

//import the video processing library
import processing.video.*;

//declare the capture object
Capture video;

void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size(320,240,P3D); //function w/the z parameter below.
  //use P3D as a parameter in combo w/size
  
  //initialize the Capture object via constructor
  video = new Capture(this,320,240);
  
  //start the capture process
  video.start(); //you want to begin capturing right in setup,
  // but start() is its own method, and you can start to capture another time - keypressed
}

//read the image from the camera 
void draw() {
  loadPixels();
  video.loadPixels();

  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      
      //Calc the 1D location from a 2D grid; what's the 1D pixel location?
      int loc = x + y*video.width;
      
      // Get the red,green,blue values from a pixel
      float r = red(video.pixels[loc]); 
      float g = green(video.pixels[loc]);
      float b = blue(video.pixels[loc]);
      
      //Calc an amount to change brightness based on proximity to the mouse
      float d = dist(x,y,mouseX,mouseY); 
      float adjustbrightness = map(d,0,100,4,0);
      r *= adjustbrightness;
      g *= adjustbrightness;
      b *= adjustbrightness;
      
      //constrain RGB to make sure they're within 0-255 color range
      r = constrain(r,0,255);
      g = constrain(r,0,255);
      b = constrain(r,0,255);
      
      //make a new color and set pixel in the window
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}