  String testVar1 = "Hello World";
 

  void setup(){
    size(1000, 1000);
    System.out.println(testVar1);
    //System.out.println("size: " + 200 * sqrt(3));
  }

  int centerX = 500;
  int centerY = 500;
  void draw(){
    background(220);
    Organizer org = new Organizer();
    myMethods my = new myMethods();
    myColors myColor = new myColors();
   
    push();
    translate(centerX, centerY);    // make the center of the circle 0, 0
    noFill();
    my.fractal(0, 0, 500, "tri");
    pop();
  }
  
  void mouseDragged(){
    //System.out.println("X: " + mouseX);
    //System.out.println("Y: " + mouseY);
    centerX = mouseX;
    centerY = mouseY;
  }
  
  void mousePressed(){
    //System.out.println("Xpos: " + (mouseX - 500));
    //System.out.println("Ypos: " + (mouseY - 500));
  }
