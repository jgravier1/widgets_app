import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

class ButtonsScreen extends StatelessWidget {
  static  const name = 'buttons_screens';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screens'),
      ),
      body: const _ButtonsScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

class _ButtonsScreen extends StatelessWidget {
  const _ButtonsScreen();

  
  get label => null;

  @override
  Widget build(BuildContext context) {
  final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(onPressed: () {}, label: const Text('Elevated Icon'), icon: const Icon(Icons.access_alarm_outlined),),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(onPressed: () {}, label: const Text('Filled Icon'), icon: const Icon(Icons.app_shortcut),),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(onPressed: () {}, label: const Text('Outline icon'), icon: const Icon(Icons.terminal),),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(onPressed: () {}, label: const Text('Text icon'), icon: const Icon(Icons.fullscreen_exit),),
            // Todo: custom button
            IconButton(onPressed: () {}, icon: const Icon(Icons.app_registration_outlined), style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary)
            ),)
      
          ],
        ),
      ),
    );
  }
}
