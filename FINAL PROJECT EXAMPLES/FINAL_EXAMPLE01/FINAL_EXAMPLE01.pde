//FINAL EXAMPLE 01
//REFER TO PROPOSAL DOC AND READ ME FOR THE LIBRARIES INFO

import processing.video.*;
import gab.opencv.*;
import java.awt.*;
import ddf.minim.*;

Minim minim;
AudioPlayer kick;
AudioPlayer kick2;

Capture video;
OpenCV opencv;
PImage img; 

boolean A = false;

int num;
float[] pos = new float[10];
float[] pos2 = new float[10];

Rectangle[] faces;

void setup() {
  size(1280, 720);
  video = new Capture(this, 1280, 720);
  opencv = new OpenCV(this, 1280, 720);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  video.start();
  img = loadImage("bg.jpg");

  minim = new Minim(this);
  kick = minim.loadFile( "I am searching you_ alarm_3.mp3");
  kick2 = minim.loadFile( "oh my god_final.mp3");
  // mute&loop
  kick.mute();
  kick.loop();
  kick2.mute();
  kick2.loop();
}


void draw() {
  //println(A);
  Rectangle[] faces = opencv.detect();
  opencv.loadImage(video);

  loadPixels();
  video.loadPixels();

  if (faces.length>=1) {
    // unmute
    kick.unmute();
    kick2.mute();
    image(video, 0, 0 );
    A=true;
    for (int x = 0; x < video.width; x++) {
      for (int y = 0; y < video.height; y++) {
        int loc = x + y*video.width;
        for (int i = 0; i < faces.length; i++) {
          float r, g, b;
          r = red  (video.pixels[loc]);
          g = green(video.pixels[loc]);
          b = blue (video.pixels[loc]);

          pos[0]=faces[i].x+faces[i].width/1.9;
          pos[1]=faces[i].x+faces[i].width/3.2;
          pos[2]=faces[i].x+faces[i].width/2.2;
          pos[3]=faces[i].x+faces[i].width/2.2;
          pos[4]=faces[i].x+faces[i].width/3.3;
          pos[5]=faces[i].x+faces[i].width/2;
          pos[6]=faces[i].x+faces[i].width/3.8;
          pos[7]=faces[i].x+faces[i].width/2;
          pos[8]=faces[i].x+faces[i].width/8;
          pos[9]=faces[i].x+faces[i].width/1.4;

          pos2[0]=faces[i].y+faces[i].height/4*3.5;
          pos2[1]=faces[i].y+faces[i].height/4*3.8;
          pos2[2]=faces[i].y+faces[i].height/4;
          pos2[3]=faces[i].y+faces[i].height/25;
          pos2[4]=faces[i].y+faces[i].height/3.3;
          pos2[5]=faces[i].y+faces[i].height/1.6;
          pos2[6]=faces[i].y+faces[i].height/1.5;
          pos2[7]=faces[i].y+faces[i].height/1.3;
          pos2[8]=faces[i].y+faces[i].height/2;
          pos2[9]=faces[i].y+faces[i].height/3.3;      

          float d = dist(x, y, pos[num], pos2[num]);
          float faceface= faces[i].height/6;
          float area = map(faceface, 63, 64, 0, 0.05);
          float adjustbrightness = map(d, 0, 100, 1.5, area);
          //float adjustbrightness =0.8;

          r *= adjustbrightness;
          g *= adjustbrightness;
          b *= adjustbrightness;

          r = constrain(r, 0, 255);
          g = constrain(g, 0, 255);
          b = constrain(b, 0, 255);

          color c = color(r, g, b);
          pixels[loc] = c;
        }
      }
    }
    updatePixels();
  } else  {
    
    //mute
    kick.mute();
    kick2.unmute();
    A=false;
    scale(2);
    image(img, 0, 0);
    if (num<9) {
      num++;
    } else {
      num=0;
    }
  }

  for (int i = 0; i < faces.length; i++) {
    
    
    println(faces.length);
  }
}
void captureEvent(Capture c) {
  c.read();
}