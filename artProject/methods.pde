
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
  
  void fractal(float xPos, float yPos, float size, String triOrCir){
    float y1 = yPos - (((size * sqrt(3))/2)/3)*2;
    float x1 = xPos;
    float y2 = yPos + ((size * sqrt(3))/2)/3;
    float x2 = x1 - size/2;
    float y3 = y2;
    float x3 = x1 + size/2;
    
    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    if(triOrCir.equals("tri")){
    triangle(x1, y1, x2, y2, x3, y3);
    }else if (triOrCir.equals("cir")){
      circle(xPos, yPos, size);
    }
    //circle((x1+x2+x3)/3, (y1+y2+y3)/3, 10);      //center of triangle
   
    int minSize = 10;
    if(size >= minSize){  
      
      //stroke(color(255, 0, 0));
      fractal((x1 + x2)/2, (y1 + y2)/2, size * .4, "tri");
      fractal((x1 + x3)/2, (y1 + y3)/2, size * .4, "tri");
      fractal((x2 + x3)/2, (y2 + y3)/2, size * .4, "tri");
      //corner triangles
      fractal(x1, y1, size * .4, "cir");
      fractal(x2, y2, size * .4, "cir");
      fractal(x3, y3, size * .4, "cir");
    }
    
  }
  
  void betterFractal(float xPos, float yPos, float size){
    float y1 = yPos - (((size * sqrt(3))/2)/3)*2;
    float x1 = xPos;
    float y2 = yPos + ((size * sqrt(3))/2)/3;
    float x2 = x1 - size/2;
    float y3 = y2;
    float x3 = x1 + size/2;
    
    // midpoint formula: ((x1 + x2) / 2), ((y1 + y2) / 2)
    triangle(x1, y1, x2, y2, x3, y3);
    //circle((x1+x2+x3)/3, (y1+y2+y3)/3, 10);      //center of triangle
   
    int minSize = 10;
    if(size >= minSize){  
      
      //stroke(color(255, 0, 0));
      betterFractal((x1 + x2)/2, (y1 + y2)/2, size * .4);
      betterFractal((x1 + x3)/2, (y1 + y3)/2, size * .4);
      betterFractal((x2 + x3)/2, (y2 + y3)/2, size * .4);
      //corner triangles
      betterFractal(x1, y1, size * .4);
      betterFractal(x2, y2, size * .4);
      betterFractal(x3, y3, size * .4);
    }
    
   }
  
}
