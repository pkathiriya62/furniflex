import 'package:flutter/material.dart';
import 'package:furniflex/view/commons/appcolor.dart';
import 'package:furniflex/view/commons/appimage.dart';
import 'package:furniflex/view/commons/apptext.dart';
import 'package:furniflex/view/commons/pageview.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int isLastPage = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.7,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index);
              },
              children: [
                onboarding(
                  img: Appimage.imageview1,
                  text: Apptext.headtext1,
                  subtext: Apptext.subtext1,
                ),
                onboarding(
                  img: Appimage.imageview2,
                  text: Apptext.headtext2,
                  subtext: Apptext.subtext2,
                ),
                onboarding(
                  img: Appimage.imageview3,
                  text: Apptext.headtext3,
                  subtext: Apptext.subtext3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            // axisDirection: Axis.horizontal,
            effect: ExpandingDotsEffect(
              spacing: 4.0,
              radius: 7.0,
              dotWidth: 12,
              dotHeight: 2,
              paintStyle: PaintingStyle.fill,
              strokeWidth: 1.5,
              dotColor: Color(0xffF1DAC7),
              activeDotColor: Color(0xffD39555),
            ),
          ),
        ],
      ),
      bottomSheet: isLastPage == 0
          ? Container(
              height: height * 0.08,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 293.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffF1DAC7),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 285),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffE7C3A1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 277),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffDDAC7B),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 269),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffD39555),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ]),
                    ],
                  )
                ],
              ))
          : isLastPage == 1
              ? Container(
                  height: height * 0.08,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.previousPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(color: AppColor.secondarycolor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 293.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xffF1DAC7),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 285),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xffE7C3A1),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 277),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xffDDAC7B),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 269),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xffD39555),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ]),
                        ],
                      )
                    ],
                  ))
              : Container(
                  height: height * 0.08,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.previousPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(color: AppColor.secondarycolor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 46,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Color(0xffD39555),
                              ),
                              child: Align(
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
                      )
                    ],
                  ),
                ),
    );
  }
}
