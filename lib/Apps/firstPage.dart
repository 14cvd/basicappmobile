import 'package:basicappmobile/Apps/scrollList.dart';

import 'package:flutter/material.dart';

import '../Buttons/guesMode.dart';
import '../Buttons/loginUp.dart';
import '../Buttons/signIn.dart';
import 'guessMode.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldUser(),
            Padding(padding: EdgeInsets.all(16)),
            TextFieldPassword(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GuessMode(),
                SingIn(),
                LoginUp(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldUser extends StatelessWidget {
  TextEditingController controllerUser = TextEditingController();
  TextFieldUser({super.key});

  @override
  Widget build(BuildContext context) {

  debugPrint(controllerUser.text);
    return TextField(

  

      controller: controllerUser,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: "Enter Mail",
        // suffixIcon: IconButton(
        //   icon:
        //       Icon(_isObsecureText ? Icons.visibility : Icons.visibility_off),
        //   onPressed: _isObsecureTextFunction,
        // )
      ),
    );

  }
}

class TextFieldPassword extends StatefulWidget {
  TextFieldPassword({super.key});

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  TextEditingController controllerPassword = TextEditingController();
  bool _isObsecureText = false;

  void _isObsecureTextFunction() {
    setState(() {
      _isObsecureText = !_isObsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerPassword,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          hintText: "Enter Password",
          suffixIcon: IconButton(
            icon:
                Icon(_isObsecureText ? Icons.visibility : Icons.visibility_off),
            onPressed: _isObsecureTextFunction,
          )),
      obscureText: _isObsecureText,
      obscuringCharacter: "*",
    );
  }
}

//////
class TextFieldUse extends StatefulWidget {
  String inputString;
  bool showPassword;
  TextEditingController controller = TextEditingController();
  TextFieldUse({
    super.key,
    required this.inputString,
    required this.showPassword,
  });

  @override
  State<TextFieldUse> createState() => _TextFieldUseState();
}

class _TextFieldUseState extends State<TextFieldUse> {
  bool _isObsecureText = false;

  // void _isObsecureTextFunction() {
  //   setState(() {
  //     _isObsecureText = !_isObsecureText;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: widget.inputString,
        // suffixIcon: IconButton(
        //   icon:
        //       Icon(_isObsecureText ? Icons.visibility : Icons.visibility_off),
        //   onPressed: _isObsecureTextFunction,
        // )
      ),
      obscureText: widget.showPassword,
      obscuringCharacter: "*",
    );
  }
}
