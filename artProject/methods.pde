
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
    float y1 = yPos - (size * sqrt(3))/2;
    float x1 = xPos;
    float y2 = (size * sqrt(3))/2 + yPos;
    float x2 = xPos - size;
    float y3 = y2;
    float x3 = xPos + size;
    
    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    triangle(x1, y1, x2, y2, x3, y3);
   
    int minSize = 10;
    if(size >= minSize){  
      //stroke(color(255, 0, 0));
      fractal((x1 + x2)/2, (y1 + y2)/2, size * .4);
      fractal((x1 + x3)/2, (y1 + y3)/2, size * .4);
      fractal((x2 + x3)/2, (y2 + y3)/2, size * .4);
      //corner triangles
      fractal(x1, y1, size * .4);
      fractal(x2, y2, size * .4);
      fractal(x3, y3, size * .4);
    }
    
  }
  
  void betterFractal(float xPos, float yPos, float size){
    float y1 = yPos - (size * sqrt(3))/2;
    float x1 = xPos;
    float y2 = (size * sqrt(3))/2 + yPos;
    float x2 = xPos - size;
    float y3 = y2;
    float x3 = xPos + size;
    
    triangle(x1, y1, x2, y2, x3, y3);
   }
  
}
