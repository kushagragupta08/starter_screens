import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  String name;
  String email;
  String password;
  String mobile;

  @override
  void initState() {
    super.initState();
  }

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
          top: 60.0,
          left: 20.0,
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 120.0,
          left: 20.0,
          child: Text(
            "Create a new account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
            top: 180.0,
            left: 20.0,
            right: 20.0,
            child: GestureDetector(
              onHorizontalDragEnd: (value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    height: 550.0,
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
                                "Connect with us ",
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
                                    labelText: "Enter your name",
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
                                    this.name = value;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter your email",
                                    //border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.contact_mail,
                                      color: Colors.deepPurpleAccent,
                                      size: 25.0,
                                    )),
                                onChanged: (value) {
                                  setState(() {
                                    this.email = value;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter password",
                                    //border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
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
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter Contact No",
                                    //  border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 16.0),
                                    prefixIcon: Icon(
                                      Icons.contact_phone,
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
                              child: Text("Register  ->"),
                              onPressed: () {
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: email, password: password)
                                    .then((signedUser) {
                                  debugPrint("Signed in Successfully");
                                }).catchError((e) {
                                  debugPrint("$e");
                                });
                              },
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
                                "  Already have account ? Swipe right > >",
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
