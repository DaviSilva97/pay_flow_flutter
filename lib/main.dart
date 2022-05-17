
import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import './modules/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      home: LoginPage()
    );
  }
}