import 'package:ChatUp/ui/Home.dart';
import 'package:ChatUp/ui/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/logo 2.png",
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "aa@bb.com",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        gapPadding: 3.3,
                        borderRadius: BorderRadius.circular(10.0))),
                validator: (val) {
                  if (val.length == 0)
                    return "Please enter email";
                  else if (!val.contains("@") && !val.contains(".com"))
                    return "Please enter valid email";
                  else
                    return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        gapPadding: 3.3,
                        borderRadius: BorderRadius.circular(10.0))),
                validator: (val) {
                  if (val.length == 0)
                    return "Please enter correct password";
                  else
                    return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ButtonTheme(
                        minWidth: 350,
                        height: 50,
                        child: RaisedButton(
                          child: Text(
                            "Sign in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900),
                          ),
                          color: Colors.blue.shade800,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:65.0),
                    child: Text(
                      "Do not have an account?",
                      style: TextStyle(
                        color: Colors.red.shade700,
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontStyle: FontStyle.normal,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100.0, top: 10.0),
              child: InkWell(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontStyle: FontStyle.normal,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                // },
              ),
            )
          ],
        ));
  }
}
