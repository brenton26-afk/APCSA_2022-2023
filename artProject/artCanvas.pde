  String testVar1 = "Hello World";
  int centerX = 400;
  int centerY = 400;

  void setup(){
    size(800, 800);
    System.out.println(testVar1);   
  }
 
  void draw(){
    background(220);
    Organizer org = new Organizer();
    myMethods my = new myMethods();
    myColors myColor = new myColors();
   
   
    push();
    translate(centerX, centerY);    // make the center of the circle 0, 0
    noFill();
    //circle(0, 0, 10);
    // my.drawCircles(0, 0, 200);
    my.fractal(0, 0, 200);
    pop();
  }
  
  void mouseDragged(){
    System.out.println("X: " + mouseX);
    System.out.println("Y: " + mouseY);
    //centerX = mouseX;
    //centerY = mouseY;
  }
