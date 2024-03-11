// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:furniflex/view/commons/appimage.dart';
import 'package:furniflex/view/commons/apptext.dart';
import 'package:furniflex/view/commons/globaltext.dart';
import 'package:furniflex/view/verified.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';


class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                Appimage.Verification,
                scale: 3,
              ),
            ],
          ),
          Globaltext(
            text: Apptext.varification,
            fontsize: 36,
            fontweight: FontWeight.w500,
          ),
          Globaltext(
            text: Apptext.varificationnote,
            fontsize: 16,
            fontweight: FontWeight.w300,
          ),
          const SizedBox(height: 44),
          OTPTextField(
           outlineBorderRadius: 8,
          length: 4,
          otpFieldStyle: OtpFieldStyle(
          backgroundColor: const Color(0xffBFC0C1),
          focusBorderColor: const Color(0xffBFC0C1),
          enabledBorderColor: const Color(0xffBFC0C1),
          ),
          width: double.infinity,
          fieldWidth: 78,
          style: const TextStyle(fontSize: 17),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.box,
          onCompleted: (pin) {
          print("Completed: " + pin);
      
        },
      
          ),
          const SizedBox(height: 44),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const Varified());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: const Color(0xffD39555),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}