//geometry formule from Hemesh library
//3d terrain & shphere

void modeSwitch() {

  switch(MODE) {
  case 0:
    float[][] values=new float[51][51];
    for (int j = 0; j < 51; j++) {
      for (int i = 0; i < 51; i++) {
        //int wave = 100;
        //wave = wave*2;
        values[i][j]=random(200, 250)*noise(0.45*i, 0.45*j);
        //  values[i][j]= wave*noise(0.45*i, 0.45*j);
      }
    }
    HEC_Grid creator0=new HEC_Grid();
    creator0.setU(30);
    creator0.setV(30);
    creator0.setUSize(1000);
    creator0.setVSize(1000);
    creator0.setWValues(values);
    mesh=new HE_Mesh(creator0);

    break;

  case 1:
    mesh=new HE_Mesh(new HEC_Sphere().setRadius(1000).setUFacets(64).setVFacets(32));

    break;
  }
}