import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//https://processing.org/reference/libraries/video/Movie.html
//https://processing.org/reference/libraries/video/Movie_speed_.html

import processing.video.*;
Movie MyMovie;

void setup() {
  size(1920, 1080);
  frameRate(30);
  MyMovie = new Movie(this, "purplevideo.mp4");
  MyMovie.loop();
  MyMovie.speed(1);
}

void draw() {
  image(MyMovie, 0, 0);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}