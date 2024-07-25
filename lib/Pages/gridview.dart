import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class PageGrid extends StatelessWidget {
  const PageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice GridView",style: myStyal(2,Colors.white,FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.withOpacity(0.1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.8
                ),
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
