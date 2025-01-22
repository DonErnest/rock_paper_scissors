enum GameState {
  gaming, browsingStats;
}


enum Move {
  rock("rock.jpg"),
  paper("paper.jpg"),
  scissors("scissors.jpg"),
  lizard("lizard.jpg"),
  spock("spock.jpg");

  final String img;

  const Move(this.img);
}

enum Result {
  userVictory, opponentVictory, drawn;
}