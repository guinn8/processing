class Camera {
  float yxtheta =PI;
  float zxtheta = PI;
  float hypot=50;
  float z=0;
  float x=100;
  float y=0;

  float xCentre=0;
  float yCentre=0;
  float zCentre=0;
  void updateCam() {
    camera(x, y, z, xCentre, yCentre, zCentre, 0, 0, 1);
  }

  void wheel(MouseEvent event) {
    int scale=3;
    float e = event.getCount();
    PVector line = new PVector(x, y, z);
    if (e<0)line.mult(-scale);
    else line.mult(scale);

    line.normalize();
    x=x+line.x;
    y=y+line.y;
    z=z+line.z;
  }





  void centre() {
    //if (mouseX<pmouseX)  yxtheta+=.01;
    //else if (mouseX>pmouseX) yxtheta-=.01;

    //if (mouseY<pmouseY) zxtheta+=.01;
    //else if (mouseY>pmouseY) zxtheta-=.01;
  zxtheta+=.01;
    xCentre=(float)Math.cos(zxtheta)+x;
    yCentre=(float)Math.sin(yxtheta)+y;
    zCentre=(float)Math.sin(zxtheta)+z;
    println("zxtheta="+zxtheta+" yxtheta="+yxtheta+" ycentre="+yCentre+ " xcentre="+xCentre+" zcentre="+zCentre);
  }

  void control() {
    switch(key) {
    case 'w':
      y=y+1;
      //xCentre+=1;
      break;
    case 's':
      y=y-1;
      //xCentre-=1;
      break;
    case 'a':
      x=x+1;
      // yCentre+=1;
      break;
    case 'd':
      x=x-1;
     // yCentre-=1;
      break;
    }
  }
}
