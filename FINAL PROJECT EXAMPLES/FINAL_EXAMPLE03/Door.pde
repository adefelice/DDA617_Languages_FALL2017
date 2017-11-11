//texture Mode bug, can't loop play

//door class

class Door {

  float z;


  Door() {

    z=1;
  }





  void display() {
    background(random(255), random(255), random(255));
    noStroke();

    translate(0, 0, 0);
    beginShape();
    textureMode(IMAGE);
    texture(video);
    z=z+10;

    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();


    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();

    translate(0, 0, -150);
    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(0, 0, 0, 0, 0);
    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);
    vertex(0, displayHeight, 0, 0, displayHeight);

    endShape();

    beginShape();
    textureMode(IMAGE);
    texture(video);


    vertex(displayWidth/2, 0, z, displayWidth, 0);
    vertex(displayWidth, 0, 0, 0, 0);
    vertex(displayWidth, displayHeight, 0, 0, displayHeight);
    vertex(displayWidth/2, displayHeight, z, displayWidth, displayHeight);

    endShape();
  }
}