import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/screens/signup_page.dart';
import 'package:test_flutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login page")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Email Address"),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Username",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Password"),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              style: TextButton.styleFrom(),
              child: const Center(
                child: Text("lOGIN"),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(text: "Don't have account? "),
                    TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
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
    );
  }
}
