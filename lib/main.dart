import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_theme.dart';
// import 'package:whatsapp/features/auth/login/presentation/views/login_view.dart';
import 'package:whatsapp/features/gdg/login_view.dart';
import 'package:whatsapp/features/gdg/whatsapp_view.dart';
import 'package:whatsapp/features/gdg/widgets/test_screen.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: AppTheme.darkTheme,
      // onGenerateRoute: onGenerateRoute,
      // initialRoute: AppRoutes.loginView,
      home: WhatsappView()
    );
  }
}
