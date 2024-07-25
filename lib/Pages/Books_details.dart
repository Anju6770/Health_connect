import 'package:flutter/material.dart';
import 'package:untitled/Data/book_list.dart';
import 'package:untitled/Model/book.dart';
import 'package:untitled/goggle%20fonts.dart';
class BooksDetails extends StatelessWidget {
  BookClass bookClass;
  BooksDetails({super.key,required this.bookClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${bookClass.name}",style: myStyal(32,Colors.blue,FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("${bookClass.image}"),fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("\$ ${bookClass.price}",style: myStyal(25),),
                    Text("${bookClass.published}",style: myStyal(25),),
                  ],
                ),
                Column(
                  children: [
                    Text("${bookClass.genre}",style: myStyal(25),),
                    Row(
                      children: [
                        Text("Views: "),
                        Text("${bookClass.views}",style: myStyal(25),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text("${bookClass.rating}",style: myStyal(20,Colors.black),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${bookClass.brief}",style: myStyal(20),),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Center(child: Text("Read",style: myStyal(18,Colors.white,FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}
