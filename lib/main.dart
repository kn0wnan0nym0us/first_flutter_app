import 'package:ChatUp/ui/LoginPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "ChatUp";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appTitle,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade800,
        ),
        backgroundColor: Colors.blueGrey.shade200,
        body: SingleChildScrollView(
          child: LoginPage(),
        ),
      ),
    );
  }
}



