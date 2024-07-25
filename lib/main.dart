import 'package:flutter/material.dart';
import 'package:untitled/1st_project/pages/Home.dart';
import 'package:untitled/main_information/buttonNavigationBar.dart';
import 'package:untitled/main_information/car.dart';
import 'package:untitled/1st_project/pages/carousel.dart';
import 'package:untitled/main_information/register.dart';
import 'package:untitled/practices/23.dart';
import 'package:untitled/practices/App.dart';
import 'package:untitled/practices/Assignment2.dart';
import 'package:untitled/practices/Bali.dart';
import 'package:untitled/Pages/complete.dart';
import 'package:untitled/Pages/doctors_details.dart';
import 'package:untitled/Pages/gridview.dart';
import 'package:untitled/Pages/home.dart';
import 'package:untitled/Pages/home_book.dart';
import 'package:untitled/Pages/home_page.dart';
import 'package:untitled/Pages/home_whatsapp.dart';
import 'package:untitled/Pages/doctors_home.dart';
import 'package:untitled/Pages/hospital_home.dart';
import 'package:untitled/Pages/list.dart';
import 'package:untitled/Pages/medicine_details.dart';
import 'package:untitled/Pages/pageView.dart';
import 'package:untitled/Pages/pharmacy_home.dart';
import 'package:untitled/Pages/right.dart';
import 'package:untitled/Pages/spalish.dart';
import 'package:untitled/practices/anjuprofile.dart';
import 'package:untitled/practices/chair.dart';
import 'package:untitled/practices/Profile.dart';
import 'package:untitled/practices/anime.dart';
import 'package:untitled/practices/assignment.dart';
import 'package:untitled/practices/con2.dart';
import 'package:untitled/practices/dilog%20method.dart';
import 'package:untitled/practices/go_to.dart';
import 'package:untitled/practices/hi.dart';
import 'package:untitled/practices/july2.dart';
import 'package:untitled/practices/mazine.dart';
import 'package:untitled/practices/Discover.dart';
import 'package:untitled/practices/page_dart.dart';
import 'package:untitled/practices/pahe%203.dart';
import 'package:untitled/practices/play.dart';
import 'package:untitled/practices/praci.dart';
import 'package:untitled/practices/practice.dart';
import 'package:untitled/practices/practice2.dart';
import 'package:untitled/practices/practice_dilalogue.dart';
import 'package:untitled/practices/tempture.dart';
import 'package:untitled/practices/the%20daily.dart';
import 'package:untitled/practices/what.dart';

import 'practices/Hey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomeMine(),
    );
  }
}
