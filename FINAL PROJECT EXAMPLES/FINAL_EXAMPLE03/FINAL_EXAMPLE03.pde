//FINAL EXAMPLE 03
//REFER TO PROPOSAL DOC AND READ ME FOR THE LIBRARIES INFO

import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

//Being Digitized
//Mengni Feng
//final project
//language Class

import wblut.math.*;
import wblut.processing.*;
import wblut.core.*;
import wblut.hemesh.*;
import wblut.geom.*;
import processing.video.*;
import processing.sound.*;

Capture video;
SoundFile song;

//PeasyCam cam;
PImage img;
int MODE=0;

String state= "1cell";

HE_Mesh mesh;
WB_Render render;

Cell cell;
Door door;
Transition transition;
Doorstill doorstill;


void setup() {
  size(displayWidth, displayHeight, P3D);

  // img = loadImage("test.jpg");
  smooth(8);
  textureMode(NORMAL);
  modeSwitch();
  render=new WB_Render(this);
  //cam = new PeasyCam(this, 600); 
  video = new Capture(this, displayWidth, displayHeight);
  video.start();

  song = new SoundFile(this, "Pattern.mp3");
  song.play();

  cell=new Cell();
  door=new Door();
  transition=new Transition();
  doorstill= new Doorstill();
}

void draw() {
  background(random(255), random(255), random(255));
  stateChange();
  frameState();
  println(frameCount);
}


void captureEvent(Capture video) {

  video.read();
}  



void stateChange() {
  if (state== "1cell") {
    cell.display();
  } else if (state=="2terrain") {
    pushMatrix();
    translate(750, 400, 200);        
    float pop=0;
    pop=frameCount;
    constrain(pop, 0, 200);
    pop=pop*2;

    //rotateX(map(mouseY,0,height,-PI,0));
    rotateX(map(pop, 0, height, -PI, 0));
    rotateZ(map(pop, 0, width, -PI, PI));
    noStroke();
    render.drawFaces(mesh, video);
    stroke(0);
    render.drawEdges(mesh);
    popMatrix();
    MODE = 0 ;
    modeSwitch();
  } else if (state=="3insphere") {
    pushMatrix();
    translate(600, 400, 50);  
    float pop=20;
    pop=frameCount;
    constrain(pop, 0, 200);
    pop=pop*3;
    //rotateX(map(mouseY,0,height,-PI,0));
    rotateX(map(pop, 0, height, -PI, 0));
    rotateZ(map(pop, 0, width, -PI, PI));
    noStroke();
    render.drawFaces(mesh, video);
    stroke(0);
    render.drawEdges(mesh);
    popMatrix();
    MODE = 1 ;
    modeSwitch();
  } else if (state=="4door") {
    door.display();
  } else if (state == "5mix") {
    image(video, random(displayWidth), random(displayHeight));
  } else if (state =="6transition") {
    transition.display();
  } else if (state =="7still") {
    doorstill.display();
  } else if (state =="8end") {

    background(0);
    song.stop();
    video.stop();
  }
}


//println(state);




//mousePress event for easy testing

//void mousePressed() {
// if (state== "1cell") {
//    state="2terrain";
//  }
//  else if (state=="2terrain"){
//    state="3insphere";
//  }  else if (state=="3insphere"){
//    state="4door";
//  }  else if (state=="4door"){
//    state="5mix";
//}else if (state == "5mix"){
//  state = "6transition";
//} else if (state == "6transition"){
//  state = "7still";
//} else if (state == "7still"){
//  state = "8end";}
//}

void frameState() {
  if (frameCount > 100 && frameCount <450) {
    if (state== "1cell") {
      state="2terrain";
    }
  } else if (frameCount > 450 && frameCount <700) {
    if (state=="2terrain") {   
      state="3insphere";
    }
  } else if (frameCount > 700 && frameCount <1100) {
    if (state=="3insphere") {   
      state="4door";
    }
  } else if (frameCount > 1100 && frameCount <1400) {
    if (state=="4door") {   
      state="5mix";
    }
  } else if (frameCount > 1400 && frameCount <1700) {
    if (state=="5mix") {   
      state="6transition";
    }
  } else if (frameCount > 1700 && frameCount <1800) {
    if (state=="6transition") {   
      state="7doorstill";
    }
  } else if (frameCount > 1800 && frameCount <2000) {
    if (state=="7doorstill") {   
      state="8end";
    }
  }
}