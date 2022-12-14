import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../utils/constants.dart';

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kLightBackground,
      ),
      home: const HomeScreen(),
    );
  }
}
