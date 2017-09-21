//Boolean shape

float r = 255;
float g = 255;
float b = 255;

void setup() {
  size(700,700);
}

void draw() {
  background(r,g,b);
  
  if (mouseX > width/2) {
    fill(255,0,0);
    ellipse(width/2,height/2,100,100);
  }
  else if(mouseY > height/2) {
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, 100, 100);
  }
  else {
    rectMode(CENTER);
    fill(255);
    rect(width/2,height/2,100,100);
  }
}

void mouseClicked() {
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
}


  