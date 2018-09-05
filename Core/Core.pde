

int scalar = 1;
public  int amount = 3;
public float inter = .05;


Axis axis = new Axis();
Points points;
Camera camera = new Camera();

void setup() {
  points = new Points();
  size(800, 1000, P3D);

  for (float a = -amount; a<amount; a=a+inter) {
    for (float c = -amount; c<amount; c=c+inter) {
      fermat(a, c);
    }
  }
}

void draw() {
  background(255);
  camera.updateCam(); 
 
  axis.update();
  if (keyPressed) camera.control();
  
  points.show();
}

public void fermat(float a, float c) {
  Complex point = new Complex(c, a);
  point = point.power(4).scale(-1).plus(new Complex(1, 0));//-(z^n)+1
  points.add(c *scalar, (float)point.re()*scalar, (float)point.im()*scalar);
}

void mouseWheel(MouseEvent event) {
  camera.wheel(event);
}

void mouseDragged(){
  camera.centre();
}
