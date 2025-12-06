import 'package:flutter/material.dart';
import 'package:whatsapp/core/routers/app_routes.dart';
import 'package:whatsapp/features/auth/login/presentation/views/login_view.dart';
import 'package:whatsapp/features/auth/signup/presentation/views/widgets/sign_up_view_body.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginView:
      return MaterialPageRoute(builder: (context) => LoginView());
    case AppRoutes.signUpView:
      return MaterialPageRoute(builder: (context) => SignUpViewBody());
    default:
      return MaterialPageRoute(
        builder: (context) =>
            NoRoutesFoundWidget(routeName: settings.name ?? ""),
      );
  }
}

class NoRoutesFoundWidget extends StatelessWidget {
  const NoRoutesFoundWidget({super.key, required this.routeName});
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('no route: $routeName found')),
    );
  }
}
