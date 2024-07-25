import 'package:flutter/material.dart';
import 'package:untitled/Data/product_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: Text("Amazon"),
    centerTitle: true,
    backgroundColor: Colors.yellow,
  ),
    body: SingleChildScrollView(
  // physics: NeverScrollableScrollPhysics(),
      // physics: BouncingScrollPhysics(),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemCount: allProducts.length,
      shrinkWrap: true,
        itemBuilder: (context, index){
      return Container(
        margin: EdgeInsets.all(10),
        height: 200,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
          Text("${allProducts[index].productName}"),
            SizedBox(
              height: 100,
                child: Image.asset("${allProducts[index].imgUrl}", fit: BoxFit.cover,)),
          Text("${allProducts[index].reviews}"),
            Text("${allProducts[index].rating}"),
        ],
        ),
      );
      },),
    ],
  ),
    ),
);
}
}