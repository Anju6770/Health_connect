import 'package:flutter/material.dart';
class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/image/susmati.jpg"),fit: BoxFit.cover)
            ),
          ),
          Positioned(
            right: -50,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/image/Asha.jpg"),fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -100,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/image/img_1.png"),fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
