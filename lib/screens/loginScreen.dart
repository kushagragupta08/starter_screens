import 'package:firestore_basics_revision/screens/registerScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  String loginId;
  String password;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 800.0,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFFA16BFE),
                Color(0xFFDEB0DF),
              ])),
        ),
        Container(
          height: 350.0,
          width: double.infinity,
        ),
        Positioned(
          top: 100.0,
          left: 20.0,
          child: Text(
            "Welcome ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 160.0,
          left: 20.0,
          child: Text(
            "Login to access your account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
            top: 250.0,
            left: 20.0,
            right: 20.0,
            child: GestureDetector(
              onHorizontalDragStart: (value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(mainAxisSize: MainAxisSize.min,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                              ),
                              child: Text(
                                "Welcome back",
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 1.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                    Color(0xFFA16BFE),
                                    Color(0xFFDEB0DF),
                                  ])),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter Login Id",
                                    //border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Colors.deepPurpleAccent,
                                      size: 25.0,
                                    )),
                                onChanged: (value) {
                                  setState(() {
                                    this.loginId = value;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter Password",
                                    //  border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 16.0),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.deepPurpleAccent,
                                      size: 25.0,
                                    )),
                                onChanged: (value) {
                                  setState(() {
                                    this.password = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FlatButton(
                              //color: Colors.deepPurpleAccent,
                              child: Text("Login  ->"),
                              onPressed: () {},
                              textColor: Colors.deepPurpleAccent,
                              splashColor: Colors.purple,
                              padding: EdgeInsets.only(
                                  left: 50.0,
                                  right: 50.0,
                                  top: 10.0,
                                  bottom: 10.0),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.deepPurpleAccent),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 30.0,
                                bottom: 20.0,
                              ),
                              child: Text(
                                " < < Don't have an Account ? Swipe left ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ]),
                    )),
              ),
            )),
      ],
    );
  }
}
