import 'package:flutter/material.dart';
import 'package:furniflex/view/selectcity.dart';
// import 'package:furniflex/view/boardingscreen.dart';
// import 'package:furniflex/view/login.dart';
// import 'package:furniflex/view/signup.dart';
// import 'package:furniflex/view/verification.dart';
// import 'package:furniflex/view/verified.dart';
// import 'package:furniflex/view/splashscreen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SelectCity(),
    );
  }
}

