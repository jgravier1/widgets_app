import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static  const name = 'buttons_screens';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screens'),
      ),
      body: const Placeholder(),
    );
  }
}
