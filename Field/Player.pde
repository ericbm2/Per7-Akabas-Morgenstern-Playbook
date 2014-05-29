class Player{
 
 ArrayList<Coordinate> coordinates;
 String position;
 
 Player(String s, int x, int y){
  position = s; 
  coordinates.add(new Coordinate(x,y));
 }
 
 void setup(){
  ellipseMode(CORNER);
  
 }
 
 void draw(){
 
 } 
 
}

