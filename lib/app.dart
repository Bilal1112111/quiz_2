import 'package:flutter/material.dart';
import 'package:ptc2d/screens/initial_screen.dart';

import 'core/utils/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.appTheme,
      home: const MyHomePage(),
    );
  }
}
