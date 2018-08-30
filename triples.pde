void setup() {
  size(640, 360, P3D);
  
  
   background(155);
 

 
}
void draw() {
  line(0,0,100,0,0,0);
stroke(204, 102, 0);
 int x,y,z;

   for(int i = 1; i<10; i++){
    for(int j = 1; j<10; j++){
      x=i*i-j*j;
      y=2*i*j;
      z=i*i+j*j;
      pushMatrix();
      translate(x, y, z);
      fill(51);
      stroke(255);
      sphere(5);
     popMatrix();
    }
  }
  
 
 camera(100, 0, 0, 0, 0, 0, 0, 1, 0);
 
 
  
}
