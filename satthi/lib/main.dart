import 'package:flutter/material.dart';
import 'package:satthi/screens/onboarding/onboarding_screen.dart';
import 'package:satthi/utils/color_scheme.dart';
import 'package:satthi/utils/input_decoration_theme.dart';
import 'package:satthi/utils/text_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: satthiTextTheme,
        colorScheme: satthiColorScheme,
        inputDecorationTheme: satthiInputDecorationTheme,
      ),
      home: OnboardingScreen(),
    );
  }
}
