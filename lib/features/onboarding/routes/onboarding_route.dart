import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride4u_mobile/core/core_module_routes/core_module_routes.dart';
import 'package:ride4u_mobile/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:ride4u_mobile/shared/navigation/app_page.dart';

class OnboardingRoutes implements CoreRoutes {
  @override
  late final List<GoRouterPage> routes;
  static const String ONBOARDING_ROUTE = '/';

  OnboardingRoutes() {
    routes = [
      GoRouterPage(
        path: ONBOARDING_ROUTE,
        builder: (BuildContext context, GoRouterState state) =>
            const OnboardingScreen(),
        needAuth: false,
        isAuthRoute: true,
      ),
    ];
  }
}
