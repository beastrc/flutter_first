import 'package:flutter/material.dart';

void main() {
  runApp(const ForgetPwdScreen());
}

class ForgetPwdScreen extends StatelessWidget {
  const ForgetPwdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySignupPage(),
    );
  }
}

class MySignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type Your Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: OutlineButton(
                  child: Text(
                    "Send Email",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  highlightedBorderColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
