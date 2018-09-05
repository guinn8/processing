class Camera {
  float yxtheta = 0;
  float zxtheta = 0;
  float hypot=50;
  float z=0;
float x=100;
float y=0;

float xCentre=0;
float yCentre=0;
float zCentre=0;
  void updateCam(){
   camera(x, y, z, xCentre, yCentre, zCentre, 0, 0, -1); 
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
  
  void sketch(){
    float theta = 0; 
    float hyp = 1;
    
   Math.atan(x/y);
  }
  
  void centre(){
    if(mouseX>pmouseX){
      yxtheta+=.01;
      yCentre=(float)Math.sin(yxtheta)*hypot+y;
      xCentre=(float)Math.cos(yxtheta)*hypot+x;
      
    
    }
    else if (mouseX<pmouseX){
      yxtheta-=.01;
      yCentre=(float)Math.sin(yxtheta)*hypot+y;
      xCentre=(float)Math.cos(yxtheta)*hypot+x;
     
    
    }
    if(mouseY>pmouseY){
     zxtheta+=.01;
     zCentre=(float)Math.sin(zxtheta*hypot)+z;
      xCentre=(float)Math.cos(zxtheta)*hypot+x;
     
    }
    else if (mouseY<pmouseY){
      zxtheta-=.01;
      zCentre=(float)Math.sin(zxtheta)*hypot+z;
      xCentre=(float)Math.cos(zxtheta)*hypot+x;
      
    }
    println("zxtheta="+zxtheta+" yxtheta="+yxtheta+" ycentre="+yCentre+ " xcentre="+xCentre);
  }

  void control() {
    switch(key) {
    case 'w':
      y=y+1;
      break;
    case 's':
      y=y-1;
      break;
    case 'a':
      x=x+1;
      break;
    case 'd':
      x=x-1;
      break;
    }
  }
}
