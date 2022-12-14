import 'package:flutter/material.dart';
import 'package:wakke_fun/pages/page.dart';
import 'configs/themes/custom_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomThemes.defaultTheme,
      home: const Home(),
    );
  }
}


