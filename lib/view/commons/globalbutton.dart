// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomButton({super.key, required this.text, required this.onPressed});

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        child: TextButton(
          style: const ButtonStyle(

            backgroundColor: MaterialStatePropertyAll(Color(0xffD39555)),
          ),
          child: Text(text, style: const TextStyle(
            color: Colors.white,
          ),),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(builder: (context) => const Text('')),
            );
          },
        ),
      ),
    );
  }
}