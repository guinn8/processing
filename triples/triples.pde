ArrayList<Point> list = new ArrayList<Point>() ;
float z=0;
float x=100;
float y=0;
public static float c=-3;
       
float xCentre=0;
float yCentre=0;
float zCentre=0;

public  int amount = 2;
 public float inter = .01;
 axis axis;
 Point points;

void setup() {
  points= new Point();
  axis= new axis();
 size(800,1000, P3D);
  
 
  
  
  
}

void draw() {
  frameRate(0);
 if (keyPressed) {
   char letter = key;
    switch(letter){
     case 'w':
     
     z=z+1;
     break;
     case 's':
     z=z-1;
     print("ran");
     break;
     case 'a':
     print("ran");
     x=x+1;
     break;
     case 'd':
     x=x-1;
     print("ran");
     break;
     
    }
 }

  background(255);
  axis.update();
   if(c<3)for(float a = -amount; a<amount; a=a+inter){
      //for(float b = -amount; b<amount; b=b+inter){
     
         //points.add(2*a*b,a*a-b*b,a*a+b*b);
         // points.add(a,b, (((-b+sqrt(b*b+a*c*4)))/2*a));
         // points.add(a,b, (((-b-sqrt(b*b+a*c*4)))/2*a));
         Complex point = new Complex(c,a);
         //println(point.re());
         point=point.times(point.times(point.times(point)));
         point=point.times(new Complex(-1,0));
         point= point.plus(new Complex(1,0));
         println(point.re());
         points.add(a,(float)point.re(),(float)point.im());
       
      //}
   }
   if(c<3) c+=.05;
  points.show(); 
  camera(x, y, z,xCentre, yCentre, zCentre, 0, 0, -1);
  
 
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  PVector line = new PVector(x,y,z);
  if (e<0)line.mult(-1);
 
  line.normalize();
  x=x+line.x;
  y=y+line.y;
  z=z+line.z;

}
