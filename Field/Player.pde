class Player{
 
 myLinkedList<Coordinate> coordinates;
 String position;
float xpos;
float ypos;
 int arraypos;
float Xshift, Yshift;
 int pred,pgreen,pblue,step;
 int counter = 60;
 boolean moving = true;
 boolean hasBall = false;
 
 
 Player(String s, int x, int y){
  position = s; 
  coordinates = new myLinkedList<Coordinate>();
  coordinates.add(new Coordinate(x,y));
  xpos = x;
  ypos = y;
  pred = 117;
  pgreen = 0;
  pblue = 94;
  arraypos = -1;
 }
 

int arraypos(){
    return arraypos;
}

void setarraypos(int a){
    arraypos = a;
}

void setHasBall(boolean bool){
    hasBall = bool;
}

boolean hasBall(){
    return hasBall;
}

String getPosition(){
    return position;
}

int sized(){
     return coordinates.size();
 }
 
float getX(){
    return xpos;
 }
 
float getY(){
     return ypos;
 }
 
 void setColor(int r, int g, int b){
   pred = r;
   pgreen = g;
   pblue = b;
 }
 
 void setX(float x){
   xpos = x;
 }
 
 void setY(float x){
     ypos = x;
 }
 
float getXco(int a){
     return coordinates.get(a).getX();
 }
 
float getYco(int a){
     return coordinates.get(a).getY();
 }
 
 void addco(int x, int y){
     coordinates.add(new Coordinate(x,y));
 }
 
 void draw(){
     stroke(117,0,94);
     fill(pred,pgreen,pblue);
     ellipse(xpos,ypos,15,15);
 }
 
 void drawEditing(){
     draw();
     for (int i = 1 ; i < coordinates.size() ; i++){
          line(coordinates.get(i-1).getX(), coordinates.get(i-1).getY(), coordinates.get(i).getX(), coordinates.get(i).getY());
     }
 }
 
 void setcounter(int c){
     counter = c;
     moving = true;
 }
 
 void run(){
      if (counter == 60){
         counter = 0;
         if (arraypos >= sized() - 2){
             moving = false;
             if (arraypos == sized() - 2){
                 arraypos++;
             }
         }
         else {
             arraypos++;
             Xshift = (getXco(arraypos+1) - getXco(arraypos)) / 60;
             Yshift = (getYco(arraypos+1) - getYco(arraypos)) / 60;
         }
         setX(getXco(arraypos));
         setY(getYco(arraypos));
       }  
       if (moving){
                 xpos += Xshift;
                 ypos += Yshift;
       }
       counter++;
       
   }
 
}
