class Ball{
  int startx;
  int starty;
  float xpos, ypos;
  float Xshift, Yshift;
  boolean isHad = true;
  
 Ball(int x,int y){
   xpos=x;
   ypos=y; 
 }
 
  void setup(){
    stroke(162,42,42);
    ellipseMode(CENTER);
    fill(162,42,42);
  }
  
  boolean isHad(){
      return isHad;
  }
  
  void draw(float x, float y){
      setup();
      ellipse(x,y,10,20);
  }
  void setXY(float x, float y){
   xpos=x; 
   ypos=y;
  }
  
  float getX(){
     return xpos;
  }
  
  float getY(){
      return ypos;
  }
  
  void setShift(float x, float y){
    Xshift = x;
    Yshift = y;
  }
  
  void shifted(){
      xpos += Xshift;
      ypos += Yshift;
  }
  
  void setIsHad(boolean bool){
      isHad = bool;
  }
  
}
