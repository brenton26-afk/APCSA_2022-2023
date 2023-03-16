/*        Brenton Overfield        */
////////////////////////////////////////////////////////////////////////

/*    Variable Yard:    */
/////////////////////////////////////////////
String testVar1 = "Hello World";
int centerX = 500;
int centerY = 500;
float start = 0;
/////////////////////////////////////////////

void setup() {
  size(1500, 1500);
  System.out.println(testVar1);
  
  /*  when drawing spiralTriangle  */
  /*  remove the code from the draw function or comment it out  */
  //myMethods my = new myMethods();
  //translate(centerX, centerY);
  //noFill();
  //my.spiralTriangle(-300, 100, 100);
  
}

void draw() {
  //code
  myMethods my = new myMethods();
  //myColors myColor = new myColors();
  
  translate(centerX, centerY);    // make the center of the circle 0, 0
  noFill();
  if (millis() - start >= 250) {
    background(220);    //resets the canvas so that the previous fractal is gone
    /*  When running spiralTriangle make the small variable in the function to .35 or .4 to make it neat    */
    my.spiralTriangle(-300, 200, 100);      // work on making the spiral more tight
    //my.betterFractal(0, 0, 500);
    start = millis();
  }
}

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
