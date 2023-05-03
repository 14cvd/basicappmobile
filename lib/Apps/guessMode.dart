import 'package:basicappmobile/Apps/scrollList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class guessMode extends StatelessWidget {
  const guessMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ScrollList(selected: false),
    );
  }
}
