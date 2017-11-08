//Changing a captured vid just like a PImage
//Incorporating rotate and translate

//import the video processing library
import processing.video.*;

//declare the capture object
Capture video;

void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size(320,240,P3D); //function w/the z parameter below; use P3D as a parameter in combo w/size
  //initialize the Capture object
  video = new Capture(this,320,240);
  //start the capture process
  video.start(); //you want to begin capturing right in setup,
  // but start() is its own method, and you can start to capture another time - keypressed
}

//read the image from the camera 
void draw() {
  background(255);
  tint(mouseX,mouseY,255); //A video can be tinted just like a PImage
  //It also can be moved, rotated, and sized just like a PImage
  translate(width/2,height/2,-50);//https://processing.org/reference/translate_.html
  imageMode(CENTER);
  rotate(PI/4); //https://processing.org/reference/rotate_.html
  image(video,0,0,mouseX,mouseY);
  }