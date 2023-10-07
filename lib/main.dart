import 'package:carrot/pages/home_page.dart';
import 'package:carrot/pages/join_page.dart';
import 'package:carrot/pages/login_page.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
      },
    );
  }
}
