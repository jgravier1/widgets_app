import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControls(),
    );
  }
}

class _UiControls extends StatefulWidget {
  const _UiControls();

  @override
  State<_UiControls> createState() => _UiControlsState();
}

class _UiControlsState extends State<_UiControls> {
  bool isDeveloper = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        RadioListTile(
          value: value, 
          groupValue: groupValue, 
          onChanged: onChanged)
      ],
    );
  }
}
