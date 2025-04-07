import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';


// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreens.name,
      builder: (context, state) => const HomeScreens(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progres_screen',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar_screen',
      builder: (context, state) => const SnackbarScreen(),
    ),GoRoute(
      path: '/animated_screen',
      builder: (context, state) => const AnimatedScreen(),
    ),GoRoute(
      path: '/ui_screen',
      builder: (context, state) => const UiControlScreen(),
    ),
    GoRoute(
      path: '/tutorial_screen',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    
  ],
);