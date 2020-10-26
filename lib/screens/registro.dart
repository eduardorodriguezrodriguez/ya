import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Registro extends StatefulWidget {
  const Registro({PageView body});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Registro> {
  String nom = " ";
  final nomController = TextEditingController();
  String gmail = " ";
  final gmailController = TextEditingController();
  String tel = " ";
  final telController = TextEditingController();
  String contra = " ";
  final contraController = TextEditingController();
  String afircontr = " ";
  final afircontrController = TextEditingController();
  @override
  void dispose() {
    nomController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage('assets/images/registro.png'),
              ),
            ),
          ),
          TextField(
            controller: nomController,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 50, 120, 250),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: 'Escribe tu nombre',
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black26,
                )),
          ),
          TextField(
            controller: gmailController,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 50, 120, 250),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black26,
                )),
          ),
          TextField(
            controller: telController,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 50, 120, 250),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: 'Numero de telefono',
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black26,
                )),
          ),
          TextField(
            controller: contraController,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 50, 120, 250),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: 'Contraseña',
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black26,
                )),
          ),
          TextField(
            controller: afircontrController,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(250, 50, 120, 250),
                  width: 1.5,
                  style: BorderStyle.solid,
                ),
              ),
              prefixIcon: Icon(Icons.person),
              hintText: 'Confirmar contraseña',
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: TextButton(
              onPressed: () {
                nom = nomController.text;
                gmail = gmailController.text;
                tel = telController.text;
                contra = contraController.text;
                afircontr = afircontrController.text;
                print("El nombre que escribiste es: $nom");
              },
              child: Text(
                'Registrarse',
                style: TextStyle(color: Colors.blueAccent),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
