class Play{

  Player[] players;
  String formation;
  String name;
   
  Play(String name, String formation){
    players = new Player[11];
    this.formation = formation;
    this.name = name;
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
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="iform-left"){
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",340,505);
        players[9] = new Player("WR1",150,525);
        players[10] = new Player("WR2",700,505);
    }
    if(formation=="singleback"){
        players[5] = new Player("QB",425,515);
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
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",465,550);
        players[8] = new Player("TE1",510,505);
        players[9] = new Player("WR1",150,505);
        players[10] = new Player("WR2",700,525);
    }
    if(formation=="weak-i"){
        players[5] = new Player("QB",425,515);
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
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",350,505);
        players[9] = new Player("TE2",500,505);
        players[10] = new Player("TE3",525,525);
    }
    if(formation=="goalline-left"){
        players[5] = new Player("QB",425,515);
        players[6] = new Player("RB1",425,595);
        players[7] = new Player("FB1",425,550);
        players[8] = new Player("TE1",325,525);
        players[9] = new Player("TE2",350,505);
        players[10] = new Player("TE3",500,505);
    }
  }
  
  Player[] getPlayers(){
    return players;
  }
  
  
  void setup(){}
   
  void draw(){
    for (int i = 0 ; i < 11 ; i++){
      players[i].draw();
    }
  }
  
  void run(){
    for (int i = 0 ; i < 11 ; i++){
      players[i].run();
    }
  }
  
}
