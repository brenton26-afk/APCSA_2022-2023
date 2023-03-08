  String testVar1 = "Hello World";

  void setup(){
    size(800, 800);
  
    ellipse(200, 200, 100, 100);
    square(300, 300, 50);
  
    fill(0);
    strokeWeight(5);
    textSize(15);
    text(testVar1, 165, 200);
    
  }
 
  void draw(){
    //myMethods my = new myMethods();
    
    //System.out.print("Mouse X is: ");
    //System.out.println(my.findMouseX());
    
    Organizer org = new Organizer();
    
    System.out.println(org.findSecret());
    
    fill(0);
    textSize(100);
    text(org.findSecret(), 300, 400);
    noFill();
    
    
    delay(1000);
  }
