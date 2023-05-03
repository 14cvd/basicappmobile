import 'package:flutter/material.dart';

import 'firstPage.dart';

class Sing extends StatefulWidget {
  const Sing({super.key});

  @override
  State<Sing> createState() => _SingState();
}

class _SingState extends State<Sing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16)),
            TextFieldUse(
              inputString: 'Enter mail',
              showPassword: false,
            ),
            Padding(padding: EdgeInsets.all(16)),
            TextFieldUse(
              inputString: 'Enter password',
              showPassword: true,
            ),
            Padding(padding: EdgeInsets.all(16)),
            TextFieldUse(
              inputString: 'Enter re-password',
              showPassword: true,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(30),
                      color: Colors.blue,
                      child: Text(
                        "Add",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
