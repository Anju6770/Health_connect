import 'package:flutter/material.dart';
import 'package:untitled/Data/whatsapp_list.dart';
import 'package:untitled/Pages/inside.dart';
import 'package:untitled/goggle%20fonts.dart';
class whatsapp extends StatelessWidget {
  whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp", style: myStyal(30, Colors.green, FontWeight.bold),),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 10,),
          Icon(Icons.search),
          Icon(Icons.more_vert_outlined)
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 13,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Inside(whatsapp: App[index],)),);
                    },
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage(
                                    "${App[index].image}"), fit: BoxFit.cover)
                            ),
                          ),
                          title: Text("${App[index].title}", style: myStyal(20),),
                          subtitle: Text("${App[index].subtitle}", style: myStyal(16),),
                          trailing: Text("${App[index].date}", style: myStyal(16),),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
