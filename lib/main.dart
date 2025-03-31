import 'package:flutter/material.dart';
import 'package:widgets_app/config/themes/app_theme.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screens.dart';
import 'package:widgets_app/presentation/screens/home/home_screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 0).getTheme(),
      home: const HomeScreens(),
      routes:{
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen()
      },
    );
  }
}
