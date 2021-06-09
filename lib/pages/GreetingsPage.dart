import './SetMasterPassword.dart';
import 'package:flutter/material.dart';

class GreetingsPage extends StatefulWidget {
  @override
  _GreetingsPageState createState() => _GreetingsPageState();
}

class _GreetingsPageState extends State<GreetingsPage> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedContainer(
        duration: Duration(seconds: 3),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(24.0, 8, 24, 8),
                child: Text("Welcome lockX!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Title",
                      fontSize: 36,
                      color: Colors.white,
                    )),
                margin: const EdgeInsets.only(bottom: 50),
              ),
              Image.asset(
                "assets/key.png",
                height: size.height * 0.3,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 8, 24, 8),
                child: Text(
                  "lockX takes care of your sensitive password data using encryption.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Subtitle",
                    fontSize: 18,
                    color: Colors.white,
                    // color: Colors.black54
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 8, 24, 8),
                child: Text("Set your master password to get started!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Subtitle",
                      fontSize: 24,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 8, 24, 8),
                child: Text(
                  "(You can change it afterwards)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Subtitle",
                    fontSize: 18,
                    color: Colors.white,
                    // color: Colors.black54
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: size.width * 0.7,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SetMasterPassword()));
                    },
                    color: primaryColor,
                    child: Text("Let's Go",
                        style: TextStyle(color: Colors.white, fontSize: 22))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
