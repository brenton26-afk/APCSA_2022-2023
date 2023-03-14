  String testVar1 = "Hello World";

  void setup(){
    size(2000, 2000);
    System.out.println(testVar1);   
  }
  int centerX = width/2;
  int centerY = height/2;
 
  void draw(){
    background(220);
    Organizer org = new Organizer();
    myMethods my = new myMethods();
    myColors myColor = new myColors();
   
   
    push();
    translate(centerX, centerY);    // make the center of the circle 0, 0
    noFill();
    my.fractal(0, 0, 800);
    pop();
  }
  
  void mouseDragged(){
    System.out.println("X: " + mouseX);
    System.out.println("Y: " + mouseY);
    centerX = mouseX;
    centerY = mouseY;
  }
  
  void mousePressed(){
    //System.out.println("Xpos: " + mouseX);
    //System.out.println("Ypos: " + mouseY);
  }
