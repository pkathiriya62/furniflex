import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          const SizedBox(height: 10,),
          Center(child: Image.asset('assets/images/furniflex icon 1.png',scale: 3,)),
        ],
      ),
    );
  }
}