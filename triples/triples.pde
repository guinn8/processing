ArrayList<Point> list = new ArrayList<Point>() ;
float z=0;
float x=0;
float y=-100;

float xCentre=0;
float yCentre=0;
float zCentre=0;

public  int amount = 20;
 public float inter = .5;
 axis axis;
 Point points;

void setup() {
  points= new Point();
  axis= new axis();
 size(1000,1000, P3D);
  
 
  
  
   for(float a = 0; a<amount; a=a+inter){
      for(float b = -amount; b<amount; b=b+inter){
        float c = 2;
        if(a!=0 ){
          //points.add(2*a*b,a*a-b*b,a*a+b*b);
          points.add(a,b, (((-b+sqrt(b*b+a*c*4)))/2*a));
          points.add(a,b, (((-b-sqrt(b*b+a*c*4)))/2*a));
        }
      }
   }
}

void draw() {
 
  if (mousePressed == true){
     if(mouseX>width/2)x=x+5;  
     else x=x-1;
  
     if(mouseY>height/2)z=z+5;
     else z=z-1;
  }
  
  background(255);
  //axis.update();
  points.show(); 
  camera(x, y, z,xCentre, yCentre, zCentre, 0, 0, -1);
 
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  y=y+e;
}
