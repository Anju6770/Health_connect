import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> image=[
    "assets/image/mongar.jpg",
    "assets/image/thimphu.jpg",
    "assets/image/phuntsholing hospital.jpg",
    "assets/image/Bumthang.jpg",
    "assets/image/Tsimalakha.jpg",
    "assets/image/Chhukha.jpg",
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(500,200)),
                color: secondaryColor.withOpacity(0.6)
              ),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(100,200)),
                    color: primaryColor.withOpacity(0.4)
                ),
                child: Center(child: Text("Hosmed",style: myStyal(30),)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: image.map((e) {
                    return Image.asset(e);
                  }).toList(),
                  options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (value, _){
                        setState(() {
                          _currentIndex = value;
                        });
                      }
                  ),
                ),
                buildIndicator(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text("Top Class Health Care Hospital in Bhutan",style: Styal(25),),
                      Text("Be safe... get help anywhere and anytime with us",style: Styal(19),),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor
                  ),
                  child: Center(child: Text("Log In",style: Styal(18,Colors.white),)),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor
                  ),
                  child: Center(child: Text("Sign Up",style: Styal(18,Colors.white),)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i = 0; i < image.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i == _currentIndex ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == _currentIndex ? Colors.black : Colors.grey,
            ),
          )
      ],
    );
  }
}


