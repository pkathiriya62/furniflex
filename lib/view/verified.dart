// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:furniflex/view/commons/apptext.dart';
import 'package:furniflex/view/commons/globaltext.dart';
import 'package:furniflex/view/selectcity.dart';
import 'package:get/get.dart';

class Varified extends StatefulWidget {
  const Varified({super.key});

  @override
  State<Varified> createState() => _VarifiedState();
}

class _VarifiedState extends State<Varified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Group 37982.png",
              scale: 3,
            ),
            Globaltext(
              text: Apptext.varified,
              fontweight: FontWeight.w500,
              fontsize: 36,
            ),
            Globaltext(
              text: Apptext.varifiednote,
              fontweight: FontWeight.w300,
              fontsize: 16,
            ),
            const SizedBox(
              height: 62,
            ),
            Container(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const SelectCity());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: const Color(0xffD39555),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
