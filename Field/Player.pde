class Player{
 
 ArrayList<Coordinate> coordinates;
 String position;
 int xpos;
 int ypos;
 int pred,pgreen,pblue,step;
 
 
 Player(String s, int x, int y){
  position = s; 
  coordinates = new ArrayList<Coordinate>();
  coordinates.add(new Coordinate(x,y));
  xpos = x;
  ypos = y;
  pred = 117;
  pgreen = 0;
  pblue = 94;
  int step=0;
 }
 
 void run(){
   if(step>=(coordinates.size())){
      return; 
   }
   coordinates.get(0).getX();
 }
 

 
 int sized(){
     return coordinates.size();
 }
 
 int getX(){
    return xpos;
 }
 
 int getY(){
     return ypos;
 }
 
 void setColor(int r, int g, int b){
   pred = r;
   pgreen = g;
   pblue = b;
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
     stroke(117,0,94);
     fill(pred,pgreen,pblue);
     ellipse(xpos,ypos,12,12);
 }
 
 void drawEditing(){
     draw();
     for (int i = 1 ; i < coordinates.size() ; i++){
          line(coordinates.get(i-1).getX(), coordinates.get(i-1).getY(), coordinates.get(i).getX(), coordinates.get(i).getY());
     }
 }
 
 void setup(){
 }

 
}
