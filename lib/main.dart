import 'package:flutter/material.dart';
import 'package:ismart_apps/modules/welcome/welcome_screen.dart';

import 'shared/colors/colors.common.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSMARt Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          color: defaultColor,
        ),
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: WelcomeScreen(),
    );
  }
}

