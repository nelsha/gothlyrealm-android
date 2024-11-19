import 'package:flutter/material.dart';
import 'package:gothly_realm/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.grey,
          ).copyWith(
            primary: const Color(0xFF5f2a36),
            secondary: const Color(0xFF5f2a36),
          ),
          useMaterial3: true,
        ),
        home: const LoginPage()
      ),
    );
  }
  
}