class Play{

  Player[] players;
  String formation;
  String name;
   
  Play(String name, String formation){
    players = new Player[11];
    this.formation = formation;
    this.name = name;
    players[0] = new Player("LT",625,505);
    players[1] = new Player("LG",650,505);
    players[2] = new Player("C",675,505);
    players[3] = new Player("RG",700,505);
    players[4] = new Player("RT",725,505);
    if (formation == "shotgun"){
        players[5] = new Player("QB",675,575);
        players[6] = new Player("RB",725,575);
        players[7] = new Player("TE",775,505);
        players[8] = new Player("WR1",250,505);
        players[9] = new Player("WR2",400,505);
        players[10] = new Player("WR3",1110,505);
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
