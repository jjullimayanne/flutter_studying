import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride4u_mobile/core/core_module_routes/core_module_routes.dart';
import 'package:ride4u_mobile/shared/navigation/app_page.dart';

class LoginRoute implements CoreRoutes {
  @override
  late final List<GoRouterPage> routes;
  static const LOGIN_ROUTE = '/login';

  LoginRoute() {
    routes = [
      GoRouterPage(
        path: LOGIN_ROUTE,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
        needAuth: false,
        isAuthRoute: true,
      ),
    ];
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                print('Login button pressed');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
