//Variables Random - Mouse & Key Pressed

 float r;
 float g;
 float b;
 float alpha;
 
 float diam;
 float x;
 float y;
 
 void setup() {
   size(720,480);
   background(0);
 }
 
 void draw() {
 }
 
 void mousePressed() {
   r = random(255);
   g = random(255);
   b = random(255);
   alpha = random(255);
   diam = random(300);
   x = random(width);
   y = random(height);
   noStroke();
   fill(r,b,g,alpha);
   ellipse(mouseX,mouseY,diam,diam);
 }
 
 void keyPressed() {
   background(0);
 }