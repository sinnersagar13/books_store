import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String imageLink;
  final String name;
  final double width;
  final double height;
  final BoxFit boxFit;
  const CardTile(
      {Key? key,
      required this.imageLink,
      required this.name,
      required this.height,
      required this.width,
      required this.boxFit
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      borderOnForeground: true,
      semanticContainer: true,
      child: Column(
        children: [
          Image.network(
            imageLink,
            fit: boxFit,
            width: width,
            height: height,
          ),
          Text(
            name,
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
