/*        Brenton Overfield        */
////////////////////////////////////////////////////////////////////////

String testVar1 = "Hello World";

void setup() {
  size(1000, 1000);
  System.out.println(testVar1);
  //System.out.println("size: " + 200 * sqrt(3));
  background(220);
}

int centerX = 500;
int centerY = 500;

float start = 0;

void draw() {
  myMethods my = new myMethods();
  //myColors myColor = new myColors();
  push();
  translate(centerX, centerY);    // make the center of the circle 0, 0
  noFill();
  if (millis() - start >= 1000) {
    my.betterFractal(0, 0, 500);
    start = millis();
  }
  pop();
}

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
