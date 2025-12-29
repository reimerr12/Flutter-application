import 'package:flutter/material.dart';
import '../single_item_page.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myitems = [
      //data store kora hoy
      // {
      //   map akare data store kora hoy 2nd b r moddhe
      // }
      // its called jeson formet
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D ",
        "title": "Nature",
      },

      {
        "img":
            "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D ",
        "title": "CR7",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Listviewpage"),

        backgroundColor: Colors.blueGrey,
      ),

      body: ListView.builder(
        /* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), */
        itemCount: myitems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleItemPage(
                    img: myitems[index]['img']!,
                    title: myitems[index]['title']!,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    myitems[index]['img']!,
                    height: 100,
                    width: 100,
                  ),
                  Text(myitems[index]['title']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
