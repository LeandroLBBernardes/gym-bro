import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/routes/router_transition_factory.dart';
import 'package:trabalho_faculdade/screens/home_screen.dart';
import 'package:trabalho_faculdade/screens/login_screen.dart';
import 'package:trabalho_faculdade/screens/presentation_screen.dart';
import 'package:trabalho_faculdade/screens/register_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'presentation_screen',
      path: '/',
      builder: (context, state) => const PresentationScreen(),
    ),
    GoRoute(
      name: 'login_screen',
      path: '/login',
      pageBuilder: (context, state) =>  RouterTransitionFactory.getTransitionPage(
        context: context,
        state: state,
        child: const LoginScreen(), 
        type: 'slide'
      ),
    ),
    GoRoute(
      name: 'register_screen',
      path: '/register',
      pageBuilder: (context, state) =>  RouterTransitionFactory.getTransitionPage(
        context: context,
        state: state,
        child: const RegisterScreen(), 
        type: 'slide'
      ),
    ),
    GoRoute(
      name: 'home_screen',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);