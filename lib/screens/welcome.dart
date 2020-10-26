import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vs/screens/login.dart';

class Welcome extends StatelessWidget {
  @override
  final Color color;
  const Welcome(this.color, {PageView body});

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(40)),
      //color: Color(0xffB0F9ED),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/balloon-shape.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage('assets/images/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/online_groceries.png'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'El directorio de comida',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffF81B7C),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'Busca. Encuentra. Pide.\n       Recibe. Disfruta.',
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: Color(0xff0D2AAB),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff6E1007),
                    borderRadius: BorderRadius.circular(20)),
                width: 400,
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: FlatButton(
                  onPressed: () {
                    child:
                    Text('Ir a login');
                    Login();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'INICIAR AHORA',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffEBE2E6),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
