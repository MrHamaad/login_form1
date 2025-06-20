import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
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
                flex: 2,
                child: Container(
                color: Colors.black.withAlpha(20),
                  child: Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [
                              Text("Login",style: TextStyle(fontSize: 25),),
                              TextFormField(
                                 controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                              TextFormField(
                                obscureText: true,
                                obscuringCharacter: "*",
                                controller: passwordController,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                ),
                              ),

                                          ]),
                      )),
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
