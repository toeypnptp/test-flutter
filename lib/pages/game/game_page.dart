import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage> {
  late Game _game;
  final _controller = TextEditingController();
  String? _guessNumber;
  String? _feedback;
  List<int> history = [];
  bool isWin = false;

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GUESS THE NUMBER')),
      body: Container(
        color: Colors.orange.shade100,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeader(),
                _buildMainContent(),
                _buildInputPanel(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_number.png',
          width: 240.0,
        ),
        Text(
          'GUESS THE NUMBER',
          style: GoogleFonts.kanit(fontSize: 22.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return _guessNumber == null
        ? Text(
            "I'm thinking of a number\n    between 1 and 100.\n\n   Can You Guess it? ♥",
            style: TextStyle(fontSize: 25),
          )
        : Column(
            children: [
              Text(
                _guessNumber!,
                style: TextStyle(fontSize: 80),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isWin
                      ? Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 40.0,
                        )
                      : Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 40.0,
                        ),
                  Text(
                    _feedback!,
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              isWin
                  ? OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _game = Game();
                          _guessNumber = null;
                          isWin = false;
                          history.clear();
                        });
                      },
                      child: Text(
                        'NEW GAME',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          );
  }

  Widget _buildInputPanel() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            enabled: !isWin,
            controller: _controller,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            cursorColor: Colors.black,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              isDense: true,
              // กำหนดลักษณะเส้น border ของ TextField ในสถานะปกติ
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              // กำหนดลักษณะเส้น border ของ TextField เมื่อได้รับโฟกัส
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              hintText: 'Enter the number here',
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: !isWin
              ? () {
                  setState(() {
                    _guessNumber = _controller.text;

                    int? guess = int.tryParse(_guessNumber!);

                    if (guess != null) {
                      var result = _game.doGuess(guess);

                      history.add(guess);

                      if (result == 0) {
                        //ถูก
                        isWin = true;
                        String his = '';
                        for (int i = 0; i < history.length - 1; i++) {
                          his = his + history[i].toString() + ' -> ';
                        }
                        his = his + history[history.length - 1].toString();
                        int count = history.length;
                        _showMaterialDialog('GOOD JOB!',
                            'The Answer is $guess\nYou have made $count guesses\n$his');
                        _feedback = 'CORRECT!';
                      } else if (result == 1) {
                        //มากไป
                        _feedback = 'TOO HIGH!';
                      } else {
                        //น้อยไป
                        _feedback = 'TOO LOW!';
                      }

                      _controller.clear();
                    } else {
                      _guessNumber = null;
                      _showMaterialDialog('Error', 'Please enter the number.');
                    }
                  });
                }
              : null,
          child: Text('GUESS'),
        )
      ],
    );
  }
}
