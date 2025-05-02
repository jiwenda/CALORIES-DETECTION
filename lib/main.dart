import 'package:calories_detection_system/common/extension.dart';
import 'package:calories_detection_system/screens/on_boarding/on_boarding_fuction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALORIES DETECTION X',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Tcolor.primary1,
        fontFamily: "Poppins",
      ),
      home: const OnBoardingFuction(),
    );
  }
}
