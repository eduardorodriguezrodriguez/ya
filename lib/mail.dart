import 'package:flutter/material.dart';
import 'package:flutter_vs/screens/login.dart';
import 'package:flutter_vs/screens/principal.dart';
import 'package:flutter_vs/screens/welcome.dart';
import 'package:flutter_vs/screens/registro.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fast Food App",
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
          body: Center(
        child: Container(
          // width: double.infinity,
          // height: 300,
          child: PageView(
            controller: PageController(viewportFraction: 1.0),
            //scrollDirection: Axis.vertical,
            children: <Widget>[
              Principal(),
              Welcome(Colors.amber),
              Login(),
              Registro(),
            ],
          ),
        ),
      )),
    );
  }
}
