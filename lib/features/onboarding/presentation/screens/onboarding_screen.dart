import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride4u_mobile/features/login/routes/login_route.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          GoRouter.of(context).go(LoginRoute.LOGIN_ROUTE);
        },
        child: const Text('clique '),
      )),
    );
  }
}
