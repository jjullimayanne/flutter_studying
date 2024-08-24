import 'package:go_router/go_router.dart';
import 'package:ride4u_mobile/features/login/routes/login_route.dart';
import 'package:ride4u_mobile/features/onboarding/routes/onboarding_route.dart';
import 'package:ride4u_mobile/shared/navigation/app_page.dart';

class AppRoutes {
  static final List<GoRouterPage> modulesRoutes = [
    ...OnboardingRoutes().routes,
    ...LoginRoute().routes,
  ];

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: modulesRoutes.map((page) => page.route).toList(),
  );
}
