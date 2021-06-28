import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function functionpointer;
  final String ans;
  Answer(this.ans, this.functionpointer);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: functionpointer,
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
        ),
        child: Text(ans),
      ),
    );
  }
}
