import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatelessWidget {
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
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Email',
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                )),
            TextButton(onPressed: () {}, child: Text('Sign In')),
            TextButton(onPressed: () {}, child: Text("Don't have an account?")),
            TextButton(onPressed: () {}, child: Text('Login')),
          ],
        ),
      ),
    ));
  }
}
