
class myMethods{
 
  private String secretName = "Secret";
  
  public int findMouseX(){
    return mouseX;
  }

  int minRadius = 2;
  
  void drawCircles(int x, int y, int radius){
    // noFill();
    //fill(255, 0, 0);
    strokeWeight(1);
    rect(x - radius, y - radius, radius * 2, radius *2);
    
    if(radius >= minRadius){
      drawCircles(x - radius, y, radius / 2);
      drawCircles(x + radius, y, radius / 2);
      drawCircles(x, y - radius, radius / 2);
      drawCircles(x, y + radius, radius / 2);
    } else{
      return;
    }
  }
  
  void fractal(float xPos, float yPos, float size){
    float Y = yPos - size/2;
    float X1 = xPos;
    float Y1 = Y;
    float X2 = xPos - (size / 2);
    float f2 = Y + (size/2) * sqrt(3);
    // float Y2 = (int) f2;
    float X3 = xPos + size /2;
    float f3 = Y + (size/2) * sqrt(3);
    // float Y3 = (int) f3;
    
    
    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    //circle(xPos, yPos, 10);
    
    triangle(X, Y1, X2, Y2, X3, Y3);
    int minSize = 10;
    if(size >= minSize){
      // triangle one
      fractal((X1+X2)/2, (Y1 + Y2)/2, size/2);
    }
  }
  
  void betterFractal(float xPos, float yPos, float hyp){
   // fill code
   }
  
}
