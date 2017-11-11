int amount = 0;
void drawBubbles() {
  background(0);

  physics.update();

  for (VParticle p : physics.particles) {
    ellipse(p.x, p.y, p.getRadius()*2, p.getRadius()*2);
  }


  if (leap.getHands().size()>0) {
    Hand hand=leap.getHands().get(0);

    stroke(255);
    PVector handPosition= hand.getPosition();
    line(handPosition.x-30, handPosition.y, handPosition.x+30, handPosition.y);
    line(handPosition.x, handPosition.y-30, handPosition.x, handPosition.y+30);


    if (hand.getGrabStrength()==1) {
      physics.addParticle(new VParticle(new Vec(handPosition.x, handPosition.y), 1, random(1, 10)).addBehavior(new BCollision()));
    }
  }
  
  textSize(20);
  textAlign(RIGHT,TOP);
  fill(255);
  text("Make a fist to Fill",width-30,30);
  text("You have to fill 600 stars",width-30,60);
  
  if(physics.particles.size()>600){
    page=5;
  }
  //if(leap.getHands().size()==2){
  //  page=5;
  //}
}