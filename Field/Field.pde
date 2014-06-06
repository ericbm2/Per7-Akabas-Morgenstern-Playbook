boolean locked;
boolean isIntro = true;
boolean isMenu = false;
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
    text("this is the intro", 350,350);
    text("put instructions here.....", 350,370);

    text("press b to begin", 350,390);

    if (keyPressed && key == 'b') {
      isIntro = false;
      background(0,200,0);
      isMenu = true;
    }
}

void menu(){
  color c = color(0,0,0);
  fill(c);
  noStroke();
  rect(205,155,400,400);
  c = color(100,100,100);
  fill(c);
  noStroke();
  rect(200,150,400,400);
  c = color(0,0,0);
  fill(c);
  text("this is the menu", 300,300);
  text("Press h for shotgun", 300, 320);
  if (keyPressed && key == 'h') {
      isIntro = false;
      isMenu = false;
      p.setFormation("shotgun-right");
      background(0,200,0);    
  }

}

void draw(){
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
  
  Ball b = new Ball(425,500);
  b.setup();
  b.draw(425,500);
  
  if (p.isPlaying()){
    p.run();
  }
  
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
  
  if (isIntro){
      intro();
  }
  
  if (isMenu){
      menu();
  }

}

