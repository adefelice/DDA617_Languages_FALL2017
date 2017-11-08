//video example incorporating jump and duration

import processing.video.*;
Movie movie;

void setup() {
  fullScreen(); // THIS WILL OPEN FULL SCREEN
  movie = new Movie(this, "ROOFBIRDS.mp4");
  movie.loop(); //2 OPTIONS play() plays once or loop()
}

void draw() {
  tint(0,153,204); //tint greenish-blue
  //ratio of mouse X over width
  float ratio = mouseX / (float) width;
  //in this example, if mouseX = 0, video jumps to beginning.
  //if mouseX = width, it jumps to the end; Any other value is in between!
  movie.jump(ratio * movie.duration());
  //jump() function allows jumping to point of time in the video
  //duration() returns the total length of movie in seconds
  image(movie, 0, 0);
}

// Called every time a new frame is available to read
void movieEvent(Movie movie) {
  movie.read();
}