boolean locked;
boolean isIntro = true;
boolean isMenu = false;
boolean isDone = false;
boolean isOld = false;
boolean doit = false;
boolean temp=false;
ArrayList<Play> plays = new ArrayList<Play>();
Play p;

void setup(){
 size(850,700);
 stroke(255);
 strokeWeight(3);
 background(0,200,0);
 p = new Play("First play");
 p.setFormation("shotgun-right");
}

 void intro(){
    color c = color(0,0,0);
    fill(c);
    noStroke();
    rect(305,205,250,250);
    c = color(230,230,230);
    fill(c);
    noStroke();
    rect(300,200,250,250);
    c = color(0,0,0);
    fill(c);
    text("This is the intro", 350,350);
    text("Press b to begin", 350,430);
    
    if (keyPressed && key == 'b') {
      
      isIntro = false;
      background(0,200,0);
      isMenu = true;
    }
}

void endMenu(){
  isIntro = false;
  isMenu = false;
  isOld=false;
  isDone=false;
  background(0,200,0); 
}
void old(){
  color c = color(0,0,0);
  fill(c);
  noStroke();
  rect(205,205,400,450);
  c = color(100,100,100);
  fill(c);
  noStroke();
  rect(200,200,400,450);
  c = color(0,0,0);
  fill(c);
  text("This is the old play menu",300,220);
  int place=250;
  int ascii=97;
  for(int i=0;i<plays.size();i++){
      text("Press "+(char)(ascii+i)+" for Play "+(i+1),300,place+(20*i));
  }
  if((keyPressed && key!=(char)117)&&(!temp)){
       p=plays.get((int)key-97);
       endMenu();
       p.reset();
       p.resettoo();
       p.setIsEditing(false);
       p.setIsBall(false);
       p.setIsPlaying(true);
  }
}
void menu(){
  color c = color(0,0,0);
  fill(c);
  noStroke();
  rect(205,205,400,450);
  c = color(100,100,100);
  fill(c);
  noStroke();
  rect(200,200,400,450);
  c = color(0,0,0);
  fill(c);
  text("This is the menu", 300,220);
  text("Press a for shotgun-right", 300, 250);
  text("Press c for shotgun-left", 300, 270);
  text("Press d for iform-right", 300, 290);
  text("Press e for iform-left", 300, 310);
  text("Press f for singleback", 300, 330);
  text("Press g for trips-right", 300, 350);
  text("Press h for trips-left", 300, 370);
  text("Press i for strong-i", 300, 390);
  text("Press j for weak-i", 300, 410);
  text("Press k for pistol-right", 300, 430);
  text("Press l for pistol-left", 300, 450);
  text("Press m for empty-right", 300, 470);
  text("Press n for empty-left", 300, 490);
  text("Press o for goalline-right", 300, 510);
  text("Press p for goalline-left", 300, 530);
  text("Press q for singleback-spread", 300, 550);
  text("Press r for split-right", 300, 570);
  text("Press s for split-left", 300, 590);
  text("Press t for fullhouse", 300, 610);
  text("Press u for old play",300,630);
  if (keyPressed && key == 'a') {
      endMenu();
      p.setFormation("shotgun-right");
  }
  else if (keyPressed && key == 'c') {
      endMenu();
      p.setFormation("shotgun-left");
  }
  else if (keyPressed && key == 'd') {
      endMenu();
      p.setFormation("iform-right");
  }
  else if (keyPressed && key == 'e') {
      endMenu();
      p.setFormation("iform-left");
  }
  else if (keyPressed && key == 'f') {
      endMenu();
      p.setFormation("singleback");
  }
  else if (keyPressed && key == 'g') {
      endMenu();
      p.setFormation("trips-right");
  }
  else if (keyPressed && key == 'h') {
      endMenu();
      p.setFormation("trips-left");
  }
  else if (keyPressed && key == 'i') {
      endMenu();
      p.setFormation("strong-i");
  }
  else if (keyPressed && key == 'j') {
      endMenu();
      p.setFormation("weak-i");
  }
  else if (keyPressed && key == 'k') {
      endMenu();
      p.setFormation("pistol-right");
  }
  else if (keyPressed && key == 'l') {
      endMenu();
      p.setFormation("pistol-left");
  }
  else if (keyPressed && key == 'm') {
      endMenu();
      p.setFormation("empty-right");
  }
  else if (keyPressed && key == 'n') {
      endMenu();
      p.setFormation("empty-left");
  }
  else if (keyPressed && key == 'o') {
      endMenu();
      p.setFormation("goalline-right");
  }
  else if (keyPressed && key == 'p') {
      endMenu();
      p.setFormation("goalline-left");
  }
  else if (keyPressed && key == 'q') {
      endMenu();
      p.setFormation("singleback-spread");
  }
  else if (keyPressed && key == 'r') {
      endMenu();
      p.setFormation("split-right");
  }
  else if (keyPressed && key == 's') {
      endMenu();
      p.setFormation("split-right");
  }
  else if (keyPressed && key == 't') {
      endMenu();
      p.setFormation("fullhouse");
  }
  else if (keyPressed && key == 'u'){
    isMenu=false;
    isOld=true;
  }

}

void draw(){
 if (p.isPlaying()){
    background(0,200,0);
  }
  else if (p.isEditing()){
    color c = color(230,230,230);
    fill(c);
    rect(8,8,350,22);
    c = color(0,0,0);
    fill(c);
    text("Press 'x' when you are done editing your play.", 20, 20);
  }
  else if (p.isBall()){
      color c = color(230,230,230);
      fill(c);
      rect(8,8,800,100);
      c = color(0,0,0);
      fill(c);
      text("Press 'z' when you are done setting up the pass.", 20, 20);
      text("First type the number point where you want the QB to throw the ball.",20,60);
      text("Then type the number point where you want the WR to recieve the ball (must be within 1 or 2 points of the throw being released)", 20, 80);
      text("Type the number of the player who should recieve the pass.", 20, 40);
      
    }
  
  stroke(255);
  line(50,50,50,650);
  line(800,50,800,650);
  line(50,50,800,50);
  line(50,650,800,650);
  line(100,635,150,635);
  line(100,620,150,620);
  line(100,605,150,605);
  line(100,590,150,590);
  line(50,575,800,575);
  line(100,560,150,560);
  line(100,545,150,545);
  line(100,530,150,530);
  line(100,515,150,515);
  stroke(0,0,255);
  line(50,500,800,500);
  stroke(255);
  line(100,485,150,485);
  line(100,470,150,470);
  line(100,455,150,455);
  line(100,440,150,440);
  line(50,425,800,425);
  line(100,410,150,410);
  line(100,395,150,395);
  line(100,380,150,380);
  line(100,365,150,365);
  line(50,350,800,350);
  line(100,335,150,335);
  line(100,320,150,320);
  line(100,305,150,305);
  line(100,290,150,290);
  line(50,275,800,275);
  line(100,260,150,260);
  line(100,245,150,245);
  line(100,230,150,230);
  line(100,215,150,215);
  line(50,200,800,200);
  line(100,185,150,185);
  line(100,170,150,170);
  line(100,155,150,155);
  line(100,140,150,140);
  line(50,125,800,125);
  line(100,110,150,110);
  line(100,95,150,95);
  line(100,80,150,80);
  line(100,65,150,65);
  line(50,50,800,50);
  
  
  line(750,635,700,635);
  line(750,620,700,620);
  line(750,605,700,605);
  line(750,590,700,590);
  line(750,560,700,560);
  line(750,545,700,545);
  line(750,530,700,530);
  line(750,515,700,515);
  line(750,485,700,485);
  line(750,470,700,470);
  line(750,455,700,455);
  line(750,440,700,440);
  line(750,410,700,410);
  line(750,395,700,395);
  line(750,380,700,380);
  line(750,365,700,365);
  line(750,335,700,335);
  line(750,320,700,320);
  line(750,305,700,305);
  line(750,290,700,290);
  line(750,260,700,260);
  line(750,245,700,245);
  line(750,230,700,230);
  line(750,215,700,215);
  line(750,185,700,185);
  line(750,170,700,170);
  line(750,155,700,155);
  line(750,140,700,140);
  line(750,110,700,110);
  line(750,95,700,95);
  line(750,80,700,80);
  line(750,65,700,65);
 
  
  if (keyPressed && key == 'x' && (p.isEditing() || !(doit))){
      p.swt1();
  }   
  if (keyPressed && key == 'z' && p.isBall()){
      p.swt();
  }
  
  if (p.isPlaying()){
     p.run();
     p.draw();
  }
  
  p.ball();

  
  if (p.isEditing()){
     if (mousePressed && !(locked)){
          p.Pressed();
          locked = true;
      }
      else if (mousePressed && locked){
          p.Dragged();
      }
      else if (locked && !(mousePressed)){
          p.Released();
          locked = false;
      }
      else {
         p.draw();
      }
   }
 

  if(p.isDone()){
    plays.add(p);
    setup();
    isIntro=true;
    isMenu=false;
    p.isDone=false;
     
  }
  
  if (isIntro){
      intro();
  }
  
  if (isMenu){
      menu();
  }
  if (isOld){
   old(); 
  }
}


