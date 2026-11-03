import 'package:flutter/material.dart';
import 'MyApp.dart';


class Homescreen extends StatelessWidget{
  final City city;
  const Homescreen ({super.key,required this.city})
}

@override 
Widget build(BuildContext context){
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16.8),
            SizeBox(
              heigt: 100,
              child ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: city.images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image(image: AssetImage(Images)),
                  )
                }
              )
            )
          )

        ],
      )
    )
  )
}