//tictac toe
//players-variable
//gameboard-variable
//play(function)-
//displayboard(function)-already assigned
//checkwinner(function)
//displaywinner(function)
import 'dart:io';

void main() {
  String player = "X";
  var gamedashboard = [
    [
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
    ]
  ];
  //display function for the ui
  displaydashboard(gamedashboard);
  //Play function to switch and enter input
  play(gamedashboard, player);
}

void displaydashboard(List gamedashboard) {
  print(
      "${gamedashboard[0][0]}  |  ${gamedashboard[0][1]}  |  ${gamedashboard[0][2]}");
  print("------------");
  print(
      "${gamedashboard[1][0]}  |  ${gamedashboard[1][1]}  |  ${gamedashboard[1][2]}");
  print("------------");
  print(
      "${gamedashboard[2][0]}  |  ${gamedashboard[2][1]}  |  ${gamedashboard[2][2]}");
}

void play(List gamedashboard, String player) {
  print("Player $player select the box (1-9) : ");
  //takes in put as box number converts into a interger and if an interger returns null
  var box = int.tryParse(stdin.readLineSync()!);
  //conditional statement to check input
  if (box != null && box >= 1 && box <= 9) {
    var row = (box - 1) ~/ 3; //calculate the row
    var col = (box - 1) % 3; //calculate the column
    if (gamedashboard[row][col] == "") {
      gamedashboard[row][col] = player;
      //checkwinner function
      checkwinner(gamedashboard, player);
    } else {
      print("This box is already occupied.Please select another box");
      play(gamedashboard, player);
    }
  } else {
    print("Invalid box.Please select a number between 1-9");
    play(gamedashboard, player);
  }
}

void checkwinner(List gamedashboard, String player) {
  displaydashboard(gamedashboard);
  if (gamedashboard[0][0] == gamedashboard[0][1] &&
      gamedashboard[0][1] == gamedashboard[0][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[1][0] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[1][2] &&
      gamedashboard[1][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[2][0] == gamedashboard[2][1] &&
      gamedashboard[2][1] == gamedashboard[2][2] &&
      gamedashboard[2][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == gamedashboard[1][0] &&
      gamedashboard[1][0] == gamedashboard[2][0] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][1] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][1] &&
      gamedashboard[0][1].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == gamedashboard[1][2] &&
      gamedashboard[1][2] == gamedashboard[2][2] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][0] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0].every((element) => element != "") &&
      gamedashboard[1].every((element) => element != "") &&
      gamedashboard[2].every((element) => element != "")) {
    print("It's a draw!");
  } else {
    if (player == "X") {
      player = "O";
    } else {
      player = "X";
    }
  }
  play(gamedashboard, player);
}

void displaywinner(String player) {
  print("Player $player is the winner");
}
