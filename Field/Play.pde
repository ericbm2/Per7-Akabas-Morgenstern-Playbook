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
    if (formation == "shotgun"){
        players[5] = new Player("QB",425,575);
        players[6] = new Player("RB",385,575);
        players[7] = new Player("TE",510,505);
        players[8] = new Player("WR1",150,505);
        players[9] = new Player("WR3",250,525);
        players[10] = new Player("WR2",700,525);
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
