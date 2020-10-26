import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vs/screens/registro.dart';

class Login extends StatefulWidget {
  const Login({PageView body});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nom = " ";
  final nomController = TextEditingController();
  String loc = " ";
  final locController = TextEditingController();
  @override
  void dispose() {
    nomController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset("assets/images/FastFood-Logo.png"),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/images/autenticacion.png'),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'Ingresa tus credenciales registradas para acceder',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      color: Color(0xff3D2731),
                    ),
                  ),
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
              controller: locController,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff6E1007),
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Escribe tu contrseña',
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black26,
                  )),
            ),
            TextButton(
              onPressed: () {
                Registro();
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    '¿Aun no tenes una cuenta?' 'consigue una!!',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      color: Color(0xff3D2731),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TextButton(
                onPressed: () {
                  nom = nomController.text;
                  loc = locController.text;
                  print("El nombre que escribiste es: $nom");
                },
                child: Text(
                  'ingresar',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
