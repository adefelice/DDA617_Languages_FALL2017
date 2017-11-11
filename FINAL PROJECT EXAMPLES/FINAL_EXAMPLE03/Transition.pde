//Shader transition


class Transition {


  PShader deform;

  Transition() {

    background(0);
    textureWrap(REPEAT);


    deform = loadShader("deform.glsl");
    deform.set("resolution", float(width), float(height));
  }

  void display() {

    deform.set("time", millis() / 1000.0);
    deform.set("mouse", float(0), float(0));
    shader(deform);
    //image(space, 0, 0, width, height);
    image(video, 0, 0, width, height);
  }
}