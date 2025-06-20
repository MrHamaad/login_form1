import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obsecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/login.jpg",
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
                const SizedBox(height: 20),
                // Form Section
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "xyz@gmail.com",
                          labelText: "Enter Your Email",
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        obscureText: _obsecurePassword,
                        obscuringCharacter: "*",
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Enter Your Password",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obsecurePassword = !_obsecurePassword;
                              });
                            },
                            icon: Icon(
                              _obsecurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            // TODO: Validate and login
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Login", style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Forgot Password?"),
                        ],
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            // TODO: Navigate to Register
                          },
                          child: const Text("Don't Have an Account? Register Here."),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
