
import 'package:flutter/material.dart';

import '../Apps/guessMode.dart';

class GuessMode extends StatelessWidget {
  const GuessMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => guessMode(),
              ));
        },
        child: Text("Guess Mode"));
  }
}
