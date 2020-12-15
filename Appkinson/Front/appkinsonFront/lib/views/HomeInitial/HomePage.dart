import 'package:flutter/material.dart';
import 'Buttons/ButtonLogin.dart';
import 'Buttons/ButtonRegister.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.white,
        Colors.yellow[200],
        Colors.blue,
        Colors.blue[700],
      ])),
      child: Column(children: <Widget>[
        SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            "APPkinson",
            style: TextStyle(
                color: Colors.blue[900], fontSize: 40, fontFamily: "Raleway"),
          ),
        ),
        Positioned(
            child: Image.asset(
          "assets/images/cerebroAzul.png",
          height: size.height * 0.25,
        )),
        SizedBox(
          height: 100,
        ),
        Center(
          child: Text(
            "Bienvenido!",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: "Raleway"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ButtonLogin(),
        SizedBox(
          height: 10,
        ),
        ButtonRegister(),
      ]),
    ));
  }
}
