import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(concrete());
}

class concrete extends StatelessWidget {
  const concrete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text(
            'Ask Me Anythong',
            style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: moveable(),
      ),
    );
  }
}

class moveable extends StatefulWidget {
  const moveable({Key? key}) : super(key: key);

  @override
  State<moveable> createState() => _moveableState();
}

class _moveableState extends State<moveable> {
  int changeimage=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                changeimage=Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$changeimage.png'),
          ),
        )
      ],
    );
  }
}
