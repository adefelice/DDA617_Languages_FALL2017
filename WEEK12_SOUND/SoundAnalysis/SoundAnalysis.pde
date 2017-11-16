// Sound Analysis with Live Microphone Input: AKA Art that listens
//Here we'll tie the size of a circle to volume levels the mic picks up

import processing.sound.*;

AudioIn input; // create an input object to have recognize this microphone
Amplitude analyzer; //create an Amplitude object
//once you have this object, you need to connect sound
//you wish to analyze; this is done with the input() function

void setup() {
  size(200, 200);
  // Start listening to the mic
  // Create an Audio input (built-in mic) and grab the 1st channel
  input = new AudioIn(this, 0); //simple sketch grabbing channel 1
  
  // start the Audio Input (built-in mic starts listening)
  input.start();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
}

void draw() {
  background(255);

  // Get the overall volume (between 0 and 1.0)
  float vol = analyzer.analyze();
  fill(127);
  stroke(0);

  // Draw an ellipse with size based on volume
  ellipse(width/2, height/2, 10+vol*200, 10+vol*200);
}