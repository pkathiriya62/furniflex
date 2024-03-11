
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:furniflex/view/commons/appcolor.dart';
import 'package:furniflex/view/commons/globaltext.dart';
import 'package:google_fonts/google_fonts.dart';

class onboarding extends StatelessWidget {
  final text;
  final subtext;
  final img;
  const onboarding({super.key, this.text, this.subtext, this.img});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(flex: 40,),
               TextButton(
                    onPressed: () {
                      controller.previousPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: AppColor.secondarycolor),
                    ),
                  ),
            ],
          ),
          SizedBox(
            height: height * 0.20,
          ),
          Image.asset(
            img,
            scale: 3,
          ),
           SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Globaltext(
              text: text,
              textStyle: TextStyle(
                fontFamily: GoogleFonts.outfit.toString(),
                fontWeight: FontWeight.w500,
                fontSize: height * 0.03,
                color: AppColor.primarycolor,
              ),
            ),
          ),
           SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Globaltext(
              text: subtext,
              textStyle: TextStyle(
                fontFamily: GoogleFonts.outfit.toString(),
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColor.secondarycolor,
              ), 
            ),
          ),
         
          
        ],
      ),
    );
  }
}
