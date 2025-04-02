import 'package:flutter/material.dart';
import 'package:widgets_app/config/routes/app_routes.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 0).getTheme(),
      
    );
  }
}
