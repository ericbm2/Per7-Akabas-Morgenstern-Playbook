class Player{
 
 ArrayList<Coordinate> coordinates;
 String position;
 int xpos;
 int ypos;
 
 Player(String s, int x, int y){
  position = s; 
  //coordinates.add(new Coordinate(x,y));
  xpos = x;
  ypos = y;
 }
 
 void run(){
 }
 
 void draw(){
     stroke(255,0,0);
     fill(255,0,0);
     ellipse(xpos,ypos,12,12);
 }
 
 void setup(){
 }

 
}

