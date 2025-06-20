import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsetsGeometry.symmetric(vertical: 30,horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                child: Image.asset("assets/images/login.jpg"),
                ),
              ),
              Expanded(
                child: Container(

                ),
              ),
              Expanded(
                child: Container(

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
