import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
          child: Center(child: Lottie.asset("assets/animation/Read.json"))),
    );
  }
}
