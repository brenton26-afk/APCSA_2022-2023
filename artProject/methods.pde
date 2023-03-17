
class myMethods {

  /*    Variable Yard:    */
  /////////////////////////////////////////////////////////////////////////////////////////////////////
  private String secretName = "Secret";      // to test any classes that extend this one
  int minRadius = 2;
  float ang = 0;    // possible variable to create a clean rotation
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  /*    Circle fractal    */
  ////////////////////////////////////////////////////////////////////
  void drawCircles(int x, int y, int radius) {
    rect(x - radius, y - radius, radius * 2, radius *2);
    if (radius >= minRadius) {
      drawCircles(x - radius, y, radius / 2);
      drawCircles(x + radius, y, radius / 2);
      drawCircles(x, y - radius, radius / 2);
      drawCircles(x, y + radius, radius / 2);
    } else {
      return;
    }
  }

  void fractal(float xPos, float yPos, float size, String triOrCir) {
    float y1 = yPos - (((size * sqrt(3))/2)/3)*2;
    float x1 = xPos;
    float y2 = yPos + ((size * sqrt(3))/2)/3;
    float x2 = x1 - size/2;
    float y3 = y2;
    float x3 = x1 + size/2;

    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    if (triOrCir.equals("tri")) {
      triangle(x1, y1, x2, y2, x3, y3);
    } else if (triOrCir.equals("cir")) {
      circle(xPos, yPos, size);
    }
    //circle((x1+x2+x3)/3, (y1+y2+y3)/3, 10);      //center of triangle

    int minSize = 10;
    if (size >= minSize) {
      fractal((x1 + x2)/2, (y1 + y2)/2, size * .4, "tri");
      fractal((x1 + x3)/2, (y1 + y3)/2, size * .4, "tri");
      fractal((x2 + x3)/2, (y2 + y3)/2, size * .4, "tri");
      //corner triangles
      fractal(x1, y1, size * .4, "cir");
      fractal(x2, y2, size * .4, "cir");
      fractal(x3, y3, size * .4, "cir");
    }
  }

  void betterFractal(float xPos, float yPos, float size) {
    float y1 = yPos - (((size * sqrt(3))/2)/3)*2;
    float x1 = xPos;
    float y2 = yPos + ((size * sqrt(3))/2)/3;
    float x2 = x1 - size/2;
    float y3 = y2;
    float x3 = x1 + size/2;

    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    fill(random(0, 255), random(0, 255), random(0, 255));     // fill with random colors :)
    //strokeWeight(2);
    stroke(random(0, 255), random(0, 255), random(0, 255));
    triangle(x1, y1, x2, y2, x3, y3);
    //circle((x1+x2+x3)/3, (y1+y2+y3)/3, 10);      //center of triangle
    float small = 0.4;
    int minSize = 10;
    if (size >= minSize) {
      betterFractal((x1 + x2)/2, (y1 + y2)/2, size * small);
      betterFractal((x1 + x3)/2, (y1 + y3)/2, size * small);
      betterFractal((x2 + x3)/2, (y2 + y3)/2, size * small);
      //corner triangles
      betterFractal(x1, y1, size * small);
      betterFractal(x2, y2, size * small);
      betterFractal(x3, y3, size * small);
    }
  }

  void spiralTriangle(float xPos, float yPos, float size) {
    /*    This will create a triangle just like the other functions it will turn it into a spiral.    */

    float y1 = yPos - (((size * sqrt(3))/2)/3)*2;
    float x1 = xPos;
    float y2 = yPos + ((size * sqrt(3))/2)/3;
    float x2 = x1 - size/2;
    float y3 = y2;
    float x3 = x1 + size/2;

    fill(random(0, 255), random(0, 255), random(0, 255));     // fill with random colors :)
    //strokeWeight(2);
    stroke(random(0, 255), random(0, 255), random(0, 255));
    //riangle(x1, y1, x2, y2, x3, y3);
    //circle(xPos, yPos, 20);
    //circle((x1+x2+x3)/3, (y1+y2+y3)/3, 10);      //center of triangle

    ang = ang + (0.05555 * PI/6);

    float small = 1.1;
    int minSize = 300;
    if (size <= minSize) {

      betterFractal((x1 + x2)/2, (y1 + y2)/2, size * small);
      betterFractal((x1 + x3)/2, (y1 + y3)/2, size * small);
      betterFractal((x2 + x3)/2, (y2 + y3)/2, size * small);
      betterFractal(x1, y1, size * small);
      betterFractal(x2, y2, size * small);
      betterFractal(x3, y3, size * small);

      //rotate(ang);
      rotate(0.555 * PI/4);
      float X = x1 - 25;
      float Y = y1 + 5;
      spiralTriangle(X, Y, size * small);
      //rotate(-0.055 * PI);

      //spiralTriangle(x2, y2, size * small);
      //spiralTriangle(x3, y3, size * small);
    }
  }
}
