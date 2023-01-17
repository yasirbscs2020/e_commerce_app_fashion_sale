import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Login screen"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
