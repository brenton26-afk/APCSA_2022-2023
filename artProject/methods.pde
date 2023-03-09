
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
  
  void fractal(int x, int y, int size){
    // code
  }
  
}
