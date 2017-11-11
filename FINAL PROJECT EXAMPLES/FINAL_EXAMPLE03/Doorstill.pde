//texture Mode bug, can't loop play


class Doorstill { 

  int z;

  Doorstill() {

    z=10;
  }





  void display() {

    background(0);
    noStroke();

    translate(0, 0, 0);
    beginShape();
    textureMode(IMAGE);
    texture(video);
    z=z+5;

    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, 0, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, 0, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, 0, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, 0, displayWidth, displayHeight);

    endShape();
  }
}