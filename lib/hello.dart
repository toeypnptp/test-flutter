import 'dart:io';
import 'dart:math';

void main(){
  print("╔══════════════════════════════════════════");
  print("║             GUESS THE NUMBER             ");
  print("╟──────────────────────────────────────────");

  const MAX_RANDOM = 100;
  int count = 0;
  Random r = new Random();
  var answer = r.nextInt(MAX_RANDOM) + 1;
  var guess;

  do {
    stdout.write("║ Guess the number between 1 and $MAX_RANDOM : ");
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }
    guess = int.tryParse(input);
    if(guess != null) {
      if (answer == guess) {
        count++;
        print("║ ➜ $guess is CORRECT ❤, total guesses : $count");
        print("╟──────────────────────────────────────────");
      } else if (answer < guess) {
        print("║ ➜ $guess is TOO HIGH! ▲");
        print("╟──────────────────────────────────────────");
        count++;
      } else {
        print("║ ➜ $guess is TOO LOW! ▼");
        print("╟──────────────────────────────────────────");
        count++;
      }
    }
  }while (guess != answer);
  print("║                 THE END                  ");
  print("╚══════════════════════════════════════════");
}