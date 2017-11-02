
import processing.video.*;
Movie myMovie;

void setup() {
  fullScreen(); // THIS WILL OPEN FULL SCREEN
  myMovie = new Movie(this, "ROOFBIRDS.mp4");
  myMovie.loop();
}

void draw() {
  tint(255, 20);
  image(myMovie, 0, 0);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}