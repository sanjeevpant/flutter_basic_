import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  Map<String,dynamic> title = {};

  @override
  Widget build(BuildContext context) {

    title = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(title["name"]),
      ),
      body: Hero(
        tag: title["name"],
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(title["url"]), fit: .contain)
          )
        ),
      ),
    );
  }
}