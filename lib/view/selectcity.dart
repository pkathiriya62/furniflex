import 'package:flutter/material.dart';
import 'package:furniflex/view/commons/appcolor.dart';
import 'package:furniflex/view/commons/apptext.dart';
import 'package:furniflex/view/commons/globaltext.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class City {
  String image, name;

  City({required this.image, required this.name});
}

List<City> cityselection = [
  City(image: "assets/images/Hyderabad.png", name: "Hydrabad"),
  City(image: "assets/images/Pune.png", name: "Pune"),
  City(image: "assets/images/Kolkatta.png", name: "Kolkata"),
  City(image: "assets/images/Mumbai.png", name: "Mumbai"),
  City(image: "assets/images/Chennai.png", name: "Chennai"),
  City(image: "assets/images/Banaglore.png", name: "Bangalore"),
  City(image: "assets/images/Delhi.png", name: "Delhi"),
  City(image: "assets/images/Ahmedabad.png", name: "Ahmedabad"),
  City(image: "assets/images/Jaipur.png", name: "Jaipur"),
  City(image: "assets/images/Lucknow.png", name: "Lucknow"),
];

class _SelectCityState extends State<SelectCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Globaltext(
              text: Apptext.selectcity,
              fontsize: 28,
              fontweight: FontWeight.w500,
              color: AppColor.primarycolor,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 117,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          //  color: Colors.white,
                          color: Color(0xffF2F2F3),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 1),
                                blurRadius: 3,
                                color: Colors.grey)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            cityselection[index].image,
                            scale: 3,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Globaltext(
                            text: cityselection[index].name,
                            fontsize: 12,
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
