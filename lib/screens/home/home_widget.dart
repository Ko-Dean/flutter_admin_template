import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Main',
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
    );
  }
}
