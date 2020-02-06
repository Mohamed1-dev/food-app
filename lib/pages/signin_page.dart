import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/signing-page';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibilty = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter Email ou Username",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter a Password ",
          hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _toggleVisibilty = !_toggleVisibilty;
                });
              },
              icon: _toggleVisibilty
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility))),
      obscureText: _toggleVisibilty,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgetten Password !",
                    style: TextStyle(fontSize: 18.0, color: Colors.blueAccent))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text("Sign In ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account ? ",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
