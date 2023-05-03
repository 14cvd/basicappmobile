import 'package:flutter/material.dart';

import '../Apps/login.dart';

class LoginUp extends StatelessWidget {
  const LoginUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      },
      child: Text("Login Up"),
    );
  }
}
