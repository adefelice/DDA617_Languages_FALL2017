//Boolean Green screen

float r = 0;
float g = 150;
float b = 0;

void setup() {
  size(720,480);
}

void draw() {
  background(r,g,b);
  stroke(255);
  line(width/2,0,width/2,height);
  
  if (mouseX > width/2) {
    g = g + 1;
  }
  
  else {
    g = g - 1;
  }
  
  if (g > 255) {
    g = 255;
  }
  else if (g < 0) {
    g = 0;
  }
}