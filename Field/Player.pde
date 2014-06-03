class Player{
 
 ArrayList<Coordinate> coordinates;
 String position;
 int xpos;
 int ypos;
 int arraypos;
 
 
 Player(String s, int x, int y){
  position = s; 
  coordinates = new ArrayList<Coordinate>();
  coordinates.add(new Coordinate(x,y));
  xpos = x;
  ypos = y;
 }
 
 void run(){
 }
 
 void increment(){
     arraypos++;    
 }
 
 int arraypos(){
     return arraypos;
 }
 
 int getX(){
    return xpos;
 }
 
 int getY(){
     return ypos;
 }
 
 void setX(int x){
   xpos = x;
 }
 
 void setY(int x){
     ypos = x;
 }
 
 int getXco(int a){
     return coordinates.get(a).getX();
 }
 
 int getYco(int a){
     return coordinates.get(a).getY();
 }
 
 void addco(int x, int y){
     coordinates.add(new Coordinate(x,y));
 }
 
 void draw(){
     stroke(255,0,0);
     fill(255,0,0);
     ellipse(xpos,ypos,12,12);
 }
 
 void setup(){
 }

 
}
