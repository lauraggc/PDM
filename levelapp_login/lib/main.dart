// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:levelapp_login/login.dart';
import 'package:levelapp_login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginHome(title: 'Login Home'),
    );
  }
}

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key, required this.title});
  final String title;

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/login/login_home.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  'assets/login/white_gradient.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Now you can LEVEL UP your game!',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  label: Text('Sign up with e-mail',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                      )), // Texto del botón
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 50.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Text('Or use social media'),
                SizedBox(height: 20.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.g_translate_outlined, color: Colors.black),
                  label: Text('Sign up with Google',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black,
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 50.0),
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook_outlined),
                  label: Text('Sign up with Facebook',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 40.0),
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
                            decoration: TextDecoration.underline, // Subrayado
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
    );
  }
}
