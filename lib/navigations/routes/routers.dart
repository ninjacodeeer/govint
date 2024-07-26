import 'package:go_router/go_router.dart';
import 'package:govint/screens/home/home_screen.dart';

GoRouter routers = GoRouter(initialLocation: '/homeScreen', routes: [
  GoRoute(
      name: '/homeScreen',
      path: '/homeScreen',
      builder: (context, state) => const HomeScreen())
]);
