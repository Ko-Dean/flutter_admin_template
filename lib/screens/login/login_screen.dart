import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SizedBox(
            width: 300,
            height: 400,
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 24),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ],
            )),
      )),
    );
  }
}
