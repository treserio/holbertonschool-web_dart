int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Score = 0;
  int team2Score = 0;

  team1.forEach((shotType, shotTotal) {
    switch(shotType) {
      case 'Free throws':
        team1Score += shotTotal * 1;
        break;
      case '2 pointers':
        team1Score += shotTotal * 2;
        break;
      case '3 pointers':
        team1Score += shotTotal * 3;
        break;
    }
  });

  team2.forEach((shotType, shotTotal) {
    switch(shotType) {
      case 'Free throws':
        team2Score += shotTotal * 1;
        break;
      case '2 pointers':
        team2Score += shotTotal * 2;
        break;
      case '3 pointers':
        team2Score += shotTotal * 3;
        break;
    }
  });

  if (team1Score == team2Score) {
    return 0;
  } else if (team1Score > team2Score) {
    return 1;
  } else if (team1Score < team2Score) {
    return 2;
  }
  return 0;
}