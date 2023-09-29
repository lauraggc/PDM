// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:levelapp_login/signup.dart';
import 'package:levelapp_login/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 30,
                  bottom: 30.0), // Agrega espacio en los lados
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0), // Bordes redondeados
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Color y opacidad de la sombra
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Desplazamiento de la sombra
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Let's get started by filling the form below.",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email),
                            labelText: "E-mail",
                            iconColor: Colors.black,
                            focusColor: Colors.green,
                            fillColor: Colors.green,
                            hoverColor: Colors.green,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText:
                              true, // Hace que el texto sea invisible (contraseña)
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock_outline),
                            labelText: "Password",
                            iconColor: Colors.black,
                            focusColor: Colors.green,
                            fillColor: Colors.green,
                            hoverColor: Colors.green,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Tu acción cuando se presione el botón
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 57.0),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text('Or sign up with'),
                      SizedBox(height: 20.0),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_translate_outlined,
                            color: Colors.black),
                        label: Text('Sign up with Google',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 30.0),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined),
                        label: Text('Sign up with Facebook',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 23.0),
                        ),
                      ),
                      SizedBox(height: 38.0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Log in!',
                                style: TextStyle(
                                  decoration:
                                      TextDecoration.underline, // Subrayado
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
