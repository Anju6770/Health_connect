import 'package:flutter/material.dart';
class gomore extends StatefulWidget {
  const gomore({super.key});

  @override
  State<gomore> createState() => _gomoreState();
}

class _gomoreState extends State<gomore> {
  double _currentValue=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("moreway"),
      ),
      body: Column(
        children: [
          Slider(
              value: _currentValue,
              max: 100,
              onChanged: (double val){
          setState(() {
            _currentValue=val;
          });
      }
          ),
          Text("$_currentValue",style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
