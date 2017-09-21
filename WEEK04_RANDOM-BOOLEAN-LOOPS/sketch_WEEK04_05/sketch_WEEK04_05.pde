// while loops

int y = 80;
int x = 50;
int spacing = 10;
int len = 20;
int endlegs = 150;

void setup() {
  size(720,480);
  background(255);
  
  stroke(0);
  while (x <= endlegs) {
    line(x,y,x,y+len);
    x = x + spacing;
  }
}