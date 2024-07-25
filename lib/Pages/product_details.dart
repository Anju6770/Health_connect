import 'package:flutter/material.dart';
import 'package:untitled/Model/model_class.dart';
import 'package:untitled/goggle%20fonts.dart';
class ProductDetails extends StatelessWidget {
  ModalClass modalClass;
  ProductDetails({super.key, required this.modalClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${modalClass.productName}"),
      ),
      body: Column(
        children: [
          Center(child: Image.asset("${modalClass.imgUrl}")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("US \$ ${modalClass.price}",style: myStyal(23,Colors.black,FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("${modalClass.rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                ],
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Views: ",style: myStyal(20,Colors.black,FontWeight.bold),),
                  Text("${modalClass.reviews}",style: myStyal(20,Colors.black,FontWeight.bold),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
