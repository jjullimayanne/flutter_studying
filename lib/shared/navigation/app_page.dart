import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class GoRouterPage extends GoRoute {
  final bool needAuth;
  final bool isAuthRoute;

  @override
  final String path;

  @override
  final Widget Function(BuildContext, GoRouterState) builder;

  GoRouterPage({
    required this.path,
    required this.builder,
    this.needAuth = true,
    this.isAuthRoute = false,
  }) : super(path: path, builder: builder); 

  GoRoute get route => GoRoute(
    path: path,
    builder: builder,
  );
}
