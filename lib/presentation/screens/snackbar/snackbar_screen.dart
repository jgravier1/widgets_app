import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snakbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context,
                  children: [
                    const Text('Anim voluptate ex duis officia voluptate ipsum ea do laboris cillum deserunt id ea. Sunt nisi amet duis pariatur elit nisi. Eiusmod minim ex exercitation cupidatat minim veniam mollit esse laborum eiusmod et occaecat cillum. Nulla eiusmod reprehenderit minim anim officia mollit tempor nisi ex. Qui in id aliquip amet tempor mollit. Voluptate laborum nisi ipsum Lorem anim nulla. Deserunt minim exercitation ea ullamco commodo occaecat consequat minim.')
                  ]);
                },
                child: const Text('Lincencias Usadas')),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('Mostar Dialogos')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar Dialogos'),
        onPressed: () => showCustomSnackBar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
