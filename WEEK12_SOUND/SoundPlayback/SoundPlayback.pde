//From processing core sound library
//simple sound playback

import processing.sound.*;

SoundFile song;

void setup() {
  size(640,360);
  //place song file in data directory
  song = new SoundFile(this, "beats3.mp3"); 
  song.play(); // or this can be song.loop()
}
//before entering the next conditional for an event function
//we need to declare a boolean statement

void draw() {
  background(255);
  noLoop();
}
boolean playing = true; 

void mousePressed() { //a sound can be stopped with stop() or pause()
  //if (song.isPlaying()) {
  if (playing) {
    song.stop(); //then stop it on mouse pressed
    playing = false;
  } else { //otherwise, play it on mousepressed
    song.play();
    playing = true;
  }
}