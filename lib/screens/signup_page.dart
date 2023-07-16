import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/screens/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Full name"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter full Name",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Phone number"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Phone Number",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Address"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Address",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Email Address"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email Address",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Password"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Comform Password"),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Comform Password",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const LoginPage()));
                  print("sign up");
                },
                style: TextButton.styleFrom(),
                child: const Center(
                  child: Text("Sign Up"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: "Already have account? "),
                      TextSpan(
                        text: 'Sign In',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
