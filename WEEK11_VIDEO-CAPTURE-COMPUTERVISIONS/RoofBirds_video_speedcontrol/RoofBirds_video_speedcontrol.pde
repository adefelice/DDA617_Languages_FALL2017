//video example incorporating speed controlled by mouse location
//https://processing.org/reference/libraries/video/Movie_speed_.html

import processing.video.*;
Movie movie;

void setup() {
  fullScreen(); // THIS WILL OPEN FULL SCREEN
  movie = new Movie(this, "ROOFBIRDS.mp4");
  movie.loop(); //2 OPTIONS play() plays once or loop()
}

void draw() {
  //ratio of mouse X over width
  float ratio = mouseX / (float) width;
  //Replace jump() with speed() method in Movie Class
  //for mouse-controlled speed playback.
  movie.speed(ratio * movie.duration());
  //duration() returns the total length of movie in seconds
  image(movie, 0, 0);
}

// Called every time a new frame is available to read
void movieEvent(Movie movie) {
  movie.read();
}