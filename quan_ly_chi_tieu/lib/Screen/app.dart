import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/themes/theme.dart';

import 'login_page.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}


