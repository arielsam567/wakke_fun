import 'package:flutter/material.dart';
import 'package:wakke_fun/pages/page.dart';
import 'configs/themes/custom_themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomThemes.defaultTheme,
      home: Home(),
    );
  }
}


