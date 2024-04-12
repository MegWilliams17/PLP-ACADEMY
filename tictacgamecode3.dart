import 'dart:io';

void main() {
  // Initialize the game with player X and an empty game board.
  String player = "X";
  var gamedashboard = List.generate(3, (_) => List.filled(3, ""));

  // Display the initial game board.
  displaydashboard(gamedashboard);

  // Start the game.
  play(gamedashboard, player);
}

// Function to display the game board.
void displaydashboard(List gamedashboard) {
  for (int i = 0; i < gamedashboard.length; i++) {
    // Print each row of the game board with appropriate separators.
    print(gamedashboard[i].join("    |    "));
    // Add horizontal separators between rows, except for the last row.
    if (i < gamedashboard.length - 1) {
      print("-----------------------");
    }
  }
}

// Function to handle player moves and game logic.
void play(List<List<String>> gamedashboard, String player) {
  // Prompt the current player to select a box (1-9).
  print("Player $player select the box (1-9) : ");
  // Read player input from the console.
  var box = int.tryParse(stdin.readLineSync()!);

  // Check if the input is valid and within the game board range.
  if (box != null && box >= 1 && box <= 9) {
    // Calculate the row and column corresponding to the selected box.
    var row = (box - 1) ~/ 3;
    var col = (box - 1) % 3;

    // Check if the selected box is empty.
    if (gamedashboard[row][col] == "") {
      // Update the game board with the player's move.
      gamedashboard[row][col] = player;
      // Display the updated game board after each move.
      displaydashboard(gamedashboard);

      // Check if the current player has won.
      if (checkwinner(gamedashboard, player)) {
        displaywinner(player); // Display the winner.
        return; // End the game.
      } else if (isDraw(gamedashboard)) {
        print("It's a draw!"); // Display draw message if the game is a draw.
        return; // End the game.
      }

      // Switch to the other player for the next move.
      player = (player == "X") ? "O" : "X";
      play(gamedashboard, player); // Continue the game recursively.
    } else {
      // If the selected box is already occupied, prompt the player to select another box.
      print("This box is already occupied. Please select another box");
      play(gamedashboard, player); // Prompt the player again.
    }
  } else {
    // If the input is invalid or out of range, prompt the player to select a valid box.
    print("Invalid box. Please select a number between 1-9");
    play(gamedashboard, player); // Prompt the player again.
  }
}

// Function to check if the current player has won.
bool checkwinner(List<List<String>> gamedashboard, String player) {
  // Define all possible winning combinations on the game board.
  List<List<String>> winCombinations = [
    [gamedashboard[0][0], gamedashboard[0][1], gamedashboard[0][2]],
    [gamedashboard[1][0], gamedashboard[1][1], gamedashboard[1][2]],
    [gamedashboard[2][0], gamedashboard[2][1], gamedashboard[2][2]],
    [gamedashboard[0][0], gamedashboard[1][0], gamedashboard[2][0]],
    [gamedashboard[0][1], gamedashboard[1][1], gamedashboard[2][1]],
    [gamedashboard[0][2], gamedashboard[1][2], gamedashboard[2][2]],
    [gamedashboard[0][0], gamedashboard[1][1], gamedashboard[2][2]],
    [gamedashboard[0][2], gamedashboard[1][1], gamedashboard[2][0]],
  ];

  // Check if any of the winning combinations match the current player's moves.
  return winCombinations.any((line) => line.every((box) => box == player));
}

// Function to check if the game is a draw.
bool isDraw(List<List<String>> gamedashboard) {
  // Check if every box on the game board is filled.
  return gamedashboard.every((row) => row.every((box) => box.isNotEmpty));
}

// Function to display the winner of the game.
void displaywinner(String player) {
  print("Player $player is the winner");
}
