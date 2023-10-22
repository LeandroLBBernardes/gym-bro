import 'package:go_router/go_router.dart';
import 'package:trabalho_faculdade/screens/presentation_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'presentation_screen',
      path: '/',
      builder: (context, state) => const PresentationScreen(),
    )
  ],
);