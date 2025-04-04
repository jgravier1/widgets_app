import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snakbar = SnackBar(content: const Text('Hola Mundo'),
    action: SnackBarAction(label: 'OK', onPressed: () {},),
    duration: const Duration(seconds: 2),);
    
    ScaffoldMessenger.of(context).showSnackBar(snakbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar Dialogos'),
        onPressed: () => showCustomSnackBar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
