//Store the font and image in the PFont and PImage variables
PFont font;
PImage img;

//Create a String variable to store the text data as a series of characters
String statement = "It's quite warm out today.";

// Save the sketch now so a folder is created. Drag and drop media files into sketch window.
void setup() {
  size(640,425);
  font = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(font);
  img = loadImage("glacier_large.jpg");
}

void draw() {
  background(0);
  image(img,0,0);
  fill(255,0,0);
// The statement name in here will carry out the string variable. 
  text(statement,25,25,470,100);
}