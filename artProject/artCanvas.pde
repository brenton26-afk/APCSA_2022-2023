/*        Brenton Overfield        */
////////////////////////////////////////////////////////////////////////

String testVar1 = "Hello World";

void setup() {
  size(1000, 1000);
  System.out.println(testVar1);
  //System.out.println("size: " + 200 * sqrt(3));
  
  /*  when drawing spiralTriangle  */
  /*  remove the code from the draw function or comment it out  */
  myMethods my = new myMethods();
  translate(centerX, centerY);
  noFill();
  my.spiralTriangle(0, 0, 100);
  
}

int centerX = 500;
int centerY = 500;

float start = 0;

//void draw() {
//  //code
//  myMethods my = new myMethods();
//  //myColors myColor = new myColors();
  
//  translate(centerX, centerY);    // make the center of the circle 0, 0
//  noFill();
//  if (millis() - start >= 1000) {
//    background(220);    //resets the canvas so that the previous fractal is gone
//    my.spiralTriangle(0, 0, 100);
//    start = millis();
//  }
//}

void mouseDragged() {
  //System.out.println("X: " + mouseX);
  //System.out.println("Y: " + mouseY);
  centerX = mouseX;
  centerY = mouseY;
}

void mousePressed() {
  //System.out.println("Xpos: " + (mouseX - 500));
  //System.out.println("Ypos: " + (mouseY - 500));
}
