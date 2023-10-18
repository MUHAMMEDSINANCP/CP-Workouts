import 'package:flutter/material.dart';

import 'common/color_extension.dart';
import 'view/login/on_boarding_view.dart';

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
      title: 'CP Workout',
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: true,
      ),
      home: const OnBoardingView(),
    );
  }
}
