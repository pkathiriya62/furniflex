import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniflex/view/commons/globalbutton.dart';

// import '../common/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [



            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, left: 20),
                      child: Text('Sign Up', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),),
                    ),

                    Column(
                      children: [
                        Image.asset('assets/images/sofa 1 1.png', scale: 2.8,),
                        Container(

                        ),
                      ],
                    ),

                  ],
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  hintText: 'Mail-id or Phone number',
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  hintText: 'OTP',
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  hintText: 'E-mail address',
                ),
              ),
            ),

            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),

                      Text('I agree to the ',  style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),

                  Text('terms and condition', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffD39555),
                  ),),

                  Text(' & ', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),

                  Text('privacy policies', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffD39555),
                  ),),
                ],
              ),
            ),

            SizedBox(height: 20),

            CustomButton(text: 'Get Verification Code', onPressed: () {  },),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Text('  or  '),
                  Expanded(
                    child: Container(

                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 10),
                  Image.asset('assets/images/Apple_logo_black 1.png', scale: 3,),
                  Image.asset('assets/images/Google__G__logo 1.png', scale: 3),
                  Image.asset('assets/images/Facebook_f_logo_(2021) 1.png',scale: 3),
                  SizedBox(width: 10),
                ],
              ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?  ', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                Text('Sign up',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffD39555),
                ),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}