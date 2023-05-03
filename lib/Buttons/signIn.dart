import 'package:flutter/material.dart';

import '../Apps/signIn.dart';


class SingIn extends StatelessWidget {
  const SingIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Sing()),
              );
        },
        child: Text("Login Up"));
  }
}
