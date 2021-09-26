import 'dart:io';
import 'dart:math';

class Game {
  late int answer;
  late int max;
  int count = 0;
  final List feedbackList = [
    {
      'text': 'TOO HIGH! ▲',
      'isCORRECT': false,
    },
    {
      'text': 'TOO LOW! ▼',
      'isCORRECT': false,
    },
    {
      'text': 'CORRECT ♥',
      'isCORRECT': true,
    },
  ];

  Game(int max) {
    this.max = max;
    this.answer = Random().nextInt(max) + 1;

  }

  Map doGuess(int num) {
    count++;
    if (num > this.answer) {
      return feedbackList[0];
      print("╟──────────────────────────────────────────");
    } else if (num < this.answer) {
      return feedbackList[1];
      print("╟──────────────────────────────────────────");
    } else {
      return feedbackList[2];
    }
  }

  int getTotalGuesses() {
    return count;
  }
}

void main() {
  print("╔══════════════════════════════════════════");
  print("║             GUESS THE NUMBER             ");
  print("╟──────────────────────────────────────────");
  stdout.write('║ Enter max number you want to guess : ');

  var max = stdin.readLineSync();
  var Maxguess = int.tryParse(max!);
  if (Maxguess != null) {
    var game = Game(Maxguess);
    var isCorrect = false;
    do {
      print("╟──────────────────────────────────────────");
      stdout.write('║ Guess the number between 1 and $Maxguess : ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess != null) {
        Map resultMap = game.doGuess(guess);
        isCorrect = resultMap['isCORRECT'];
        var message = resultMap['text'];
        print('$guess : $message');
        /*if (isCorrect != true) {
          game.count++;
        } else {
          game.count++;
        }*/
      }
    } while (!isCorrect);
    print("╟──────────────────────────────────────────");
    print('║ Total guesses : ${game.getTotalGuesses()}');
    print("╟──────────────────────────────────────────");
    print("║                 THE END                  ");
    print("╚══════════════════════════════════════════");
  }
}