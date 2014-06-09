class Play{

  Player[] players;
  String formation;
  String name;
  boolean isEditing, isBall, isPlaying, locked, isDone;
  int selected;
  Ball b;
  int ballCount;
  int passed;
  int received;
  int receiver;
  
  Play(String name){
    players = new Player[11];
    this.formation = formation;
    this.name = name;
    selected = 11;
    isEditing = true;
    isPlaying = false;
    b = new Ball(425,500);
    receiver = 11;
    locked = false;
  }
  
  
  void setFormation(String formation){
    this.formation = formation;
    players[0] = new Player("LT",375,505);
    players[1] = new Player("LG",400,505);
    players[2] = new Player("C",425,505);
    players[3] = new Player("RG",450,505);
    players[4] = new Player("RT",475,505);
    if (formation == "shotgun-left"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("RB1",385,575);
        players[7] = new Player("WR3",250,525);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if (formation == "shotgun-right"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("RB1",385,575);
        players[7] = new Player("WR3",600,525);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="iform-right"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="iform-left"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="singleback"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("TE2",510,505);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="trips-right"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("RB1",385,575);
        players[7] = new Player("WR3",550,525);
        players[8] = new Player("WR4",635,525);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",720,505);
    }
    if(formation=="trips-left"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("RB1",465,575);
        players[7] = new Player("WR3",215,525);
        players[8] = new Player("WR4",300,525);
        players[9] = new Player("WR1",130,505);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="strong-i"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",465,550);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="weak-i"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",385,550);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="pistol-right"){
        players[5] = new Player("QB",425,555);
        players[6] = new Player("RB1",425,585);
        players[7] = new Player("WR3",250,525);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="pistol-left"){
        players[5] = new Player("QB",425,555);
        players[6] = new Player("RB1",425,585);
        players[7] = new Player("WR3",600,525);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="empty-right"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("WR3",250,525);
        players[7] = new Player("WR4",550,525);
        players[8] = new Player("WR5",635,525);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",720,505);
    }
    if(formation=="empty-left"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("WR3",215,525);
        players[7] = new Player("WR4",300,525);
        players[8] = new Player("WR5",635,525);
        players[9] = new Player("WR1",130,505);
        players[10] = new Player("WR2",720,505);
    }
    if(formation=="goalline-right"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",350,505);
        players[9] = new Player("TE2",500,505);
        players[10] = new Player("TE3",525,525);
    }
    if(formation=="goalline-left"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",325,525);
        players[9] = new Player("TE2",350,505);
        players[10] = new Player("TE3",500,505);
    }
    if(formation=="singleback-spread"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("WR3",250,525);
        players[8] = new Player("WR4",600,525);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="split-right"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",385,575);
        players[7] = new Player("RB2",465,575);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="split-left"){
        players[5] = new Player("QB",425,520);
        players[6] = new Player("RB1",385,575);
        players[7] = new Player("RB2",465,575);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="fullhouse"){
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",380,550);
        players[8] = new Player("FB2",470,550);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,505);
    }
    players[5].setHasBall(true);
  }
  
  boolean isEditing(){
      return isEditing;
  }
  
  void receiver(){
      print(receiver);
  }
  
  boolean isPlaying(){
      return isPlaying;
  }
  
  void setIsEditing(boolean bool){
      isEditing = bool;
  }
  
  void setIsBall(boolean bool){
      isBall = bool;
  }
  
  void setIsPlaying(boolean bool){
      isPlaying = bool;
  }
  
  String getFormation(){
      return formation;
  }
  
  String getName(){
      return name;
  }
  
  boolean isBall(){
      return isBall;
  }
  
  boolean isDone(){
      for (int i = 0 ; i < 11 ; i++){
          if (players[i].arraypos() < players[i].sized() - 1){
              return false;
          }
      }
      return true;
  }
  
  void swt(){
    if (receiver != 11){
      isBall = false;
      isPlaying = true;
      int quarterback;
      if (passed < players[5].sized()){
          quarterback = passed;
      }
      else {
          quarterback = players[5].sized() - 1;
      }
      float xs = (players[receiver].getXco(received) - players[5].getXco(quarterback)) / (60 * (received - passed));
      float ys = (players[receiver].getYco(received) - players[5].getYco(quarterback)) / (60 * (received - passed));
      b.setShift(xs,ys);
    }
  }
  
  
  void reset(){
      for (int i = 0 ; i < 11 ; i++){
          players[i].setX(players[i].getXco(0));
          players[i].setY(players[i].getYco(0));
          players[i].setarraypos(-1);
      }
  }
  
  void resettoo(){
    players[5].setHasBall(true);
    players[receiver].setHasBall(false);
    for (int i = 0 ; i < 11 ; i++){
        players[i].setcounter(60);
    }
  }
  
  void swt1(){
      isEditing = false;
      isBall = true;
      reset();
  }
  
  void ball(){
      if (isPlaying){
          if (b.isHad()){
              for (int i = 0 ; i < 11 ; i ++){
                  if (players[i].hasBall()){
                      b.draw(players[i].getX() + 15, players[i].getY());
                      b.setXY(players[i].getX() + 15, players[i].getY());
                  }
              }
              print(receiver);
              if (players[receiver].arraypos() >= passed){
                    players[5].setHasBall(false);
                    b.setIsHad(false);
               }
          }
          else {
               b.shifted();
               b.draw(b.getX(), b.getY());
               if (players[receiver].arraypos() >= received){
                    players[receiver].setHasBall(true);
                    b.setIsHad(true);
               }      
          }
      }
      if (isBall){
          for (int i = 0 ; i < 11 ; i++){
              text(i, players[i].getXco(0) - 2, players[i].getYco(0) - 20);
          }
          if (locked && !(keyPressed)){
              locked = false;
          }
          if (keyPressed && receiver == 11 && key != 'x' && !(locked)){
                String keys = key + "";
                receiver = Integer.parseInt(keys);
                print("choice");
                locked = true;
          }
          else if (keyPressed && passed == 0 && key != 'x' && !(locked)){
              String keys = key + "";
              passed = Integer.parseInt(keys) - 1;
              print("passed");
              locked = true;
          }
          else if (keyPressed && received == 0 && key != 'x' && !(locked)){
              String keys = key + "";
              received = Integer.parseInt(keys) - 1;
              print("received");
              locked = true;
          }
      }
  }
                        
                
         

  void Pressed() {
      for (int i = 0 ; i < 11 ; i++){
          if (((players[i].getX() - mouseX)*(players[i].getX() - mouseX) + (players[i].getY() - mouseY)*(players[i].getY() - mouseY)) <= 144){
               selected = i;
               print(i);
               players[selected].setColor(255,0,0);
               players[selected].draw();
          }
       }
  }

  void Dragged() {
      if (selected != 11){
        players[selected].setX(mouseX); 
        players[selected].setY(mouseY); 
      }
  }

  void Released() {
      if (selected != 11){
           Player him = players[selected];
           stroke(117,0,94);
           ellipse(him.getXco(him.sized()-1), him.getYco(him.sized()-1), 12, 12);
           players[selected].addco((mouseX),(mouseY));
           players[selected].setColor(255,0,0);
           
      }
      selected = 11;
  }
  
  
  Player[] getPlayers(){
    return players;
  }
  
  
  void draw(){
    for (int i = 0 ; i < 11 ; i++){
      if (isPlaying){
        players[i].draw();
      }
      else {
        players[i].drawEditing();
      }
    }
  }
  
  void run(){
    for (int i = 0 ; i < 11 ; i++){
      players[i].run();
    }
  }
  
}
