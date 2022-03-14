import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/services.dart';

class DetailPage extends StatelessWidget {
  // final Services services;
  final String image;
  final String name;
  final int price;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    this.price = 60000,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Services'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("${price}"),
            ],
          ),
        ),
      ),
    );
  }
}