import 'package:flutter/material.dart';
class pass extends StatefulWidget {
  const pass({Key? key}) : super(key: key);

  @override
  _passState createState() => _passState();
}

class _passState extends State<pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER FOOD'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text('THIS IS A HOME PAGE',style: TextStyle(fontSize: 30.0),),
            )
          ],
        ),
      ),
    );
  }
}
