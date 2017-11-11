//FINAL EXAMPLE 01
//REFER TO PROPOSAL DOC AND READ ME FOR THE LIBRARIES INFO

import de.voidplus.leapmotion.*;
import punktiert.math.Vec;
import punktiert.physics.*;
import ddf.minim.*;

LeapMotion leap;
VPhysics physics;
Minim minim;
AudioPlayer music;

PImage img;
star neuerStern;
ArrayList<star> starArray = new ArrayList<star>();
float h2;
float w2;
float d2;
int numberOfStars = 20000;
int newStars =50;
float handX, handY;

int page=0;
int galaxyStart;

void setup() {

  size(900, 900);
  minim = new Minim(this);
  music = minim.loadFile("Deep space.mp3");

  img = loadImage("space.jpg");
  w2=width/2;
  h2= height/2;
  d2 = dist(0, 0, w2, h2);
  noStroke();
  neuerStern= new star();
  frameRate(9000);
  background(0);
  leap = new LeapMotion(this).allowGestures();

  physics = new VPhysics(width, height);
  physics.setfriction(.1f);

  for (int i = 0; i < amount; i++) {
    //val for arbitrary radius
    float rad = random(1, 5);
    //vector for position
    Vec pos = new Vec (random(rad, width-rad), random(rad, height-rad));
    //create particle (Vec pos, mass, radius)
    VParticle particle = new VParticle(pos, 1, rad);
    //add Collision Behavior
    particle.addBehavior(new BCollision());
    //add particle to world
    physics.addParticle(particle);
  }

  setButtons();
}


void draw() {
  switch(page) {
  case 0:
    background(0);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("You are a cosmic explorer,Your mission is to finish daily tasks. Today is 12/7/2986, put your hand above controller and swipe to start.", 
      width/2-200, height/2-100, 400, 200);

    break;

  case 1:


    for (Hand hand : leap.getHands ()) {
      PVector handPosition       = hand.getPosition();
      handX=handPosition.x;
      handY=handPosition.y;
      image(img, 0, 0);
      fill(0, map(dist(handX, handY, w2, h2), 0, d2, 255, -10));
      rect(0, 0, width, height);
      fill(255); 
      neuerStern.render();
      for (int i = 0; i<newStars; i++) {   // star init
        starArray.add(new star());
      }


      for (int i = 0; i<starArray.size (); i++) {
        if (starArray.get(i).x<0||starArray.get(i).x>width||starArray.get(i).y<0||starArray.get(i).y>height) starArray.remove(i);
        starArray.get(i).move();
        starArray.get(i).render();
      }
      if (starArray.size()>numberOfStars) {//
        for (int i = 0; i<newStars; i++) {
          starArray.remove(i);
        }
      }
    }

    if (millis()-galaxyStart>10*1000) {
      page=2;
      music.pause();
    }
    break;

  case 2:
    background(0);
    //fill(255,150);
    //rect(width/2-200,height/2-100,400,200,30);
    fill(255);
    textSize(32);
    text("New Task", width/2, height/2-80);
    //fill(255);
    //textSize(12);
    //text("Swipe to enter",width/2,height/2+20);

    if (leap.getHands().size()>0) {
      PVector handPosition       = leap.getHands().get(0).getPosition();
      handX=handPosition.x;
      handY=handPosition.y;
    }

    stroke(0, 255, 0);
    strokeWeight(1);
    line(handX, handY-30, handX, handY+30);
    line(handX-30, handY, handX+30, handY);

    bt1.display(handX, handY);
    bt2.display(handX, handY);
    
    if(leap.getHands().size()>0){
    if (leap.getHands().get(0).getGrabStrength()==1) {
      if (bt1.cursorOn(handX, handY)) {
        page=3;
      } else if (bt2.cursorOn(handX, handY)) {
        page=4;
      }
    }
    }

    break;

  case 3:
    drawBubbles();

    break;

  case 4:
    if (leap.getHands().size()>0) {
      PVector handPosition       = leap.getHands().get(0).getPosition();
      handX=handPosition.x;
      handY=handPosition.y;
      grasp=leap.getHands().get(0).getGrabStrength();
    }


    drawShootingGame();

    break;
    
    case 5:
    resetShootingGame();
    background(0);
    //fill(255,150);
    //rect(width/2-200,height/2-100,400,200,30);
    fill(255);
    textSize(32);
    textAlign(CENTER,CENTER);
    text("Task Complete", width/2, height/2-80);
    textSize(24);
    text("Swipe to go back", width/2, height/2+80);
    break;
    
    case 6:
    resetShootingGame();
    background(0);
    //fill(255,150);
    //rect(width/2-200,height/2-100,400,200,30);
    fill(255);
    textSize(32);
    textAlign(CENTER,CENTER);
    text("You just crashed your shuttle", width/2, height/2-80);
    textSize(24);
    text("Swipe to go back", width/2, height/2+80);
    break;
  }
}

void leapOnSwipeGesture(SwipeGesture g, int state) {
  if (page==0 ) {
    page=1;
    galaxyStart=millis();
    music.play();
  }
  if (page==5 || page==6) {
    page=0;
  }
}

//void leapOnCircleGesture(CircleGesture g, int state){
//  if(page==3 && state==3){
//    page=0;
//  }
//}