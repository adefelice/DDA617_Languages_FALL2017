//Mic_input visulization
//Have the sketch read from a sound file,
//the mic set to listen to the sound
//visuals are created based on array of amplitudes
//"FFT" Spectrum Analysis

import processing.sound.*;

AudioIn input; //will read the mic
Amplitude analyzer; //analyze the amplitude
SoundFile song;

FFT fft; //An FFT object serves the same
//purpose as the previous example's Amplitude;
//However, it will provide an ARRAY of amplitude values (one for each band)
// rather than a single overall volume level
//Fast Fourier Transform (Joseph Fourier)

void setup() {
  size(500, 300);
  input = new AudioIn(this, 0); //construct input
  song = new SoundFile(this, "Merry-Go-Round.mp3"); //construct song
  song.loop(); //set to loop forever
  input.start(); //start input mic to read
  analyzer = new Amplitude(this); //construct amplitude
  
  fft = new FFT(this, 64); //FFT constructor requires a second argument:
  //an integer! It specifies the number of frequency bands in the 
  //spectrum you want to produce;
  fft.input(input); //here the sound is plugged into the FFT object 
}

void draw() {

  fft.analyze();
  float w = width / (fft.size()/2);
  
  background(0);
  for (int i = 0; i < fft.size()/2; i++) {
    stroke(0);
    float x = i * w;
    float h = map(fft.spectrum[i], 0, 1, 0, height*50);
   
//The modulo (%) operator calculates the remainder
//of a division operation
//the remainder of i * 20 divided by 255
//if i * 20 is an even number, the result will be 0, odd, 1. 
//so the statement checks if i is an even or odd 
    fill(random(i*20 % 255),0,random(i*20 % 255));
    rect(x+2, height - h - 2, w-2, h);
  
  }
}