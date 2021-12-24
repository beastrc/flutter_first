import 'package:flutter/material.dart';

import 'screen/login.dart';
import 'screen/signup.dart';
import 'screen/forgetpwd.dart';

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/forgetpwd': (context) => ForgetPwdScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('logo_pg.png'),
              width: 120,
              height: 200,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Email',
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                )),
            TextButton(onPressed: () {}, child: Text('Sign In')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgetpwd');
                },
                child: Text("Forget your password?")),
            RaisedButton(
                // style: flatButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text("Don't have an account?")),
          ],
        ),
      ),
    ));
  }
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                    hintText: 'Enter a search term',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
