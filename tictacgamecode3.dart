import 'dart:io';

void main() {
  String player = "X";
  var gamedashboard = List.generate(3, (_) => List.filled(3, ""));
  displaydashboard(gamedashboard);
  play(gamedashboard, player);
}

void displaydashboard(List gamedashboard) {
  gamedashboard.forEach((row) => print(row.join("  |  ")));
}

void play(List gamedashboard, String player) {
  print("Player $player select the box (1-9) : ");
  var box = int.tryParse(stdin.readLineSync()!);
  if (box != null && box >= 1 && box <= 9) {
    var row = (box - 1) ~/ 3;
    var col = (box - 1) % 3;
    if (gamedashboard[row][col] == "") {
      gamedashboard[row][col] = player;
      if (checkwinner(gamedashboard, player)) {
        displaywinner(player);
        return;
      } else if (isDraw(gamedashboard)) {
        print("It's a draw!");
        return;
      }
      player = (player == "X") ? "O" : "X";
      play(gamedashboard, player);
    } else {
      print("This box is already occupied. Please select another box");
      play(gamedashboard, player);
    }
  } else {
    print("Invalid box. Please select a number between 1-9");
    play(gamedashboard, player);
  }
}

bool checkwinner(List gamedashboard, String player) {
  return [
    [gamedashboard[0][0], gamedashboard[0][1], gamedashboard[0][2]],
    [gamedashboard[1][0], gamedashboard[1][1], gamedashboard[1][2]],
    [gamedashboard[2][0], gamedashboard[2][1], gamedashboard[2][2]],
    [gamedashboard[0][0], gamedashboard[1][0], gamedashboard[2][0]],
    [gamedashboard[0][1], gamedashboard[1][1], gamedashboard[2][1]],
    [gamedashboard[0][2], gamedashboard[1][2], gamedashboard[2][2]],
    [gamedashboard[0][0], gamedashboard[1][1], gamedashboard[2][2]],
    [gamedashboard[0][2], gamedashboard[1][1], gamedashboard[2][0]],
  ].any((line) => line.every((box) => box == player));
}

bool isDraw(List gamedashboard) {
  return gamedashboard.every((row) => row.every((box) => box.isNotEmpty));
}

void displaywinner(String player) {
  print("Player $player is the winner");
}
