import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/doctors_home.dart';
import 'package:untitled/Pages/hospital_home.dart';
import 'package:untitled/Pages/medicine_home.dart';
import 'package:untitled/Pages/porfile.dart';
class Buttonnavigationbar extends StatefulWidget {
  const Buttonnavigationbar({super.key});

  @override
  State<Buttonnavigationbar> createState() => _ButtonnavigationbarState();
}

class _ButtonnavigationbarState extends State<Buttonnavigationbar> {
  List list=[
    DoctorsHome(),
    HospitalHome(),
    MedicineHome(),
    Porfile(),
  ];

  // List<BottomNavigationBarItem> allbars=[
  List<Icon> allbars=[
    // BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    // BottomNavigationBarItem(icon: Icon(Icons.person),label: "Details"),
    // // BottomNavigationBarItem(icon: Icon(Icons.local_hospital),label: "Hospital"),
    // BottomNavigationBarItem(icon: Icon(Icons.medication_liquid_outlined),label: "Medicine"),
    Icon(Icons.home),
    Icon(Icons.local_hospital),
    Icon(Icons.medication_liquid_outlined),
    Icon(Icons.person),
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        //selectedItemColor: Colors.blueAccent,
        index: _currentIndex,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        //currentIndex: _currentIndex,
          onTap: (int index){
          _currentIndex=index;
          setState(() {

          });
          },
          items: allbars,
      )
    );
  }
}
