class Ball{
  int startx;
  int starty;
  Ball(int x,int y){
   startx=x;
   starty=y; 
  }
  void setup(){
    stroke(162,42,42);
    ellipseMode(CENTER);
    fill(162,42,42);
  }
  void draw(int x, int y){
  ellipse(x,y,10,20);
  }
  void setX(int x){
   startx=x; 
  }
  void setY(int y){
   starty=y; 
  }
}
