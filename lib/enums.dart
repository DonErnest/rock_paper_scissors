enum Move {
  rock("rock.webp"),
  paper("paper.webp"),
  scissors("scissors.webp");

  final String img;

  const Move(this.img);
}

enum Result {
  userVictory, opponentVictory, drawn;
}