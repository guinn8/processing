class Points {
  PShape math = createShape(GROUP);

  void add(float x, float y, float z) {
    PShape p= createShape(BOX, .5);
    p.setStroke(false);
    p.translate(x, y, z);
    p.setFill(color(0, 255-map(y, -amount, amount, 0, 255), map(y, -amount, amount, 0, 255)));
    math.addChild(p);
  }
  
  void show() {
    shape(math); 
    translate(0, 0, 0);
   // math=createShape(GROUP);
  }
  
  //void setColor(){
  //  for(int i = 0; i<math.getChildCount();i++){
  //    math
  //  }
      
  //}
}
