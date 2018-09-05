class Point {
  
 
 PShape math;
  Point(){
    math = createShape(GROUP);  

  }
  void add(float x,float y,float z){
    
   PShape p= createShape(BOX,.5);

    //println("a="+x+" b="+y+" c="+z);
    p.setStroke(false);
    p.translate(x,y,z);
   
    p.setFill(color(0,255-map(triples.c, -3, 3, 0,255),map(triples.c, -3, 3, 0,255)));
    math.addChild(p);
  }
  

  
  void show(){
     shape(math); 
     translate(0,0,0);
     math=createShape(GROUP);
  }
}
  
