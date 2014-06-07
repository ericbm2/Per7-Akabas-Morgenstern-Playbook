class Player{
 
 ArrayList<Coordinate> coordinates;
 String position;
 int xpos;
 int ypos;
 int arraypos;
 int Xshift, Yshift;
 int xmod, ymod;
 int pred,pgreen,pblue,step;
 int counter = 60;
 boolean moving = true;
 
 
 Player(String s, int x, int y){
  position = s; 
  coordinates = new ArrayList<Coordinate>();
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
     ellipse(xpos,ypos,15,15);
 }
 
 void drawEditing(){
     draw();
     for (int i = 1 ; i < coordinates.size() ; i++){
          line(coordinates.get(i-1).getX(), coordinates.get(i-1).getY(), coordinates.get(i).getX(), coordinates.get(i).getY());
     }
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
             xmod = (getXco(arraypos+1) - getXco(arraypos)) % 60;
             ymod = (getXco(arraypos+1) - getXco(arraypos)) % 60;
         }
         setX(getXco(arraypos));
         setY(getYco(arraypos));
       }  
       if (moving){
            if (counter >= xmod){
                 xpos += Xshift;
            }
            else {
                 xpos += Xshift+abs(Xshift*1000+1)/(Xshift*1000+1);
            }
            if (counter >= ymod){
                 ypos += Yshift;
            }
            else {
                 ypos += Yshift+abs(Yshift*1000+1)/(Yshift*1000+1);
            }
       }
       counter++;
       
   }
 
}
