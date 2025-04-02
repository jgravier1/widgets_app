import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:widgets_app/config/router/app_router.dart';
=======
import 'package:widgets_app/config/routes/app_routes.dart';
>>>>>>> a3dc117 ( start: beginning development of Buttons screen)
import 'package:widgets_app/config/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
<<<<<<< HEAD
      routerConfig: appRouter,
=======
      routerConfig: router,
>>>>>>> a3dc117 ( start: beginning development of Buttons screen)
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 0).getTheme(),
      
    );
  }
}
