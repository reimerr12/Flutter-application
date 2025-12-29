import 'package:flutter/material.dart';

class SingleItemPage extends StatelessWidget {
  final img, title;
  const SingleItemPage({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Item Page"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            child: Column(
              children: [
                Image.network(img, height: 300, width: 400),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
