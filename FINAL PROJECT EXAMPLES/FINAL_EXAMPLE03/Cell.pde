class Cell {

  int cellsize;
  int cols, rows;

  Cell() {
    cellsize = 8;


    cols = width/cellsize;              // columns
    rows = height/cellsize;
  }

  void display() {
    video.loadPixels();
    for (int i = 0; i < cols; i++ ) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++ ) {
        int x = i*cellsize + cellsize/2; // x
        int y = j*cellsize + cellsize/2; // y
        int loc = x + y*width;           // Pixel array loc

        color c = video.pixels[loc];       // Grab color
        // Map brightness to a z position

        float disappear = frameCount;
        constrain(disappear, 0, 50);

        disappear=disappear*3.5;


        float z = map(brightness(video.pixels[loc]), 0, 255, 0, disappear);
        //float z = map(saturation(video.pixels[loc]), 0, 255, 0, disappear);

        pushMatrix();
        translate(x, y, -z*15); 
        //transpa = transpa-1;

        fill(c);
        noStroke();

        ellipse(0, 0, cellsize, cellsize);
        popMatrix();
      }
    }
  }
}