import 'package:ayurscan/auth/loginPage.dart';
import 'package:ayurscan/screens/home_page.dart';
import 'package:ayurscan/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme:ThemeData(
    primarySwatch:Colors.green,
    ),
    routes:{
    "/":(context)=>LoginPage(),
      MyRoutes.homeRoute:(context)=>HomePage(),
      MyRoutes.loginRoute:(context)=>LoginPage(),
    }
    );
  }
}
