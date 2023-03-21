/*        Brenton Overfield        */
////////////////////////////////////////////////////////////////////////

/*    Variable Yard:    */
/////////////////////////////////////////////
String testVar1 = "Hello World";
int centerX = 4000;
int centerY = 4000;
float start = 0;
public static Boolean test = false;
/////////////////////////////////////////////

void setup() {
  size(4000, 4000);
  System.out.println(testVar1);
  
  myMethods my = new myMethods();
  translate(centerX/2, centerY/2);
  
  noFill();
  background( 0, 0, 255);
  push();
  my.spiralTriangle( 0, 300, 15);
  pop();
  test = true;
  my.betterFractal( 0, 0, 250);
  
  
  save("fractal.png");
}

//void draw() {
//  //code

//  translate(centerX/2, centerY/2);    // make the center of the circle 0, 0
//  //circle(0, 0, 10);
//  noFill();
//  if (millis() - start >= 250) {
//    background(random(0, 255), random(0, 255), random(0, 255));    //resets the canvas so that the previous fractal is gone
//    /*  When running spiralTriangle make the small variable in the function to .35 or .4 to make it neat    */
//    push();
//    my.spiralTriangle(0, 300, 15);      // work on making the spiral more tight
//    pop();
//    my.betterFractal(0, 0, 250);
//    start = millis();
//  }
//}

/*    To move around the center so that you can view more of the drawing    */
void mouseDragged() {
  centerX = mouseX;
  centerY = mouseY;
}

/*    To find the cordinates in the drawing.    */
void mousePressed() {
  //System.out.println("Xpos: " + (mouseX - 500));
  //System.out.println("Ypos: " + (mouseY - 500));
}
