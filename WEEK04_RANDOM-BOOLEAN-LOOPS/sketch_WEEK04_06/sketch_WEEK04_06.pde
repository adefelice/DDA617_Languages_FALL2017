//while loops shapes

int x = 100;
int y = 50;

void setup() {
  size(720,480);
  background(255);
}

void draw() {
  while (x < width) {
    fill(255,0,0);
    noStroke();
    ellipse(x,height/2,75,75);
    x = x + 100;
  }
  while (y < height/2) {
    fill(0);
    rect(width/2,y,50,50);
    y = y + 75;
  }
}

    
  