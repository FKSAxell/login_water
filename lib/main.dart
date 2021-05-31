import 'package:flutter/material.dart';
import 'package:login_water/pages/initial_page.dart';
import 'package:login_water/pages/login_page.dart';
import 'package:login_water/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'initial',
      routes: {
        'initial': (_) => InitialPage(),
        'login': (_) => LoginPage(),
        'register': (_) => RegisterPage(),
      },
    );
  }
}
