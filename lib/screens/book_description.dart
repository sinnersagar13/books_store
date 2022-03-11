import 'package:flutter/material.dart';

import '../widgets/card_tile.dart';

class BookDescription extends StatefulWidget {
  const BookDescription({Key? key}) : super(key: key);

  @override
  State<BookDescription> createState() => _BookDescriptionState();
}

class _BookDescriptionState extends State<BookDescription> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "One piece",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        CardTile(
          boxFit: BoxFit.fill,
          name: "Free Books",
          height: 200.0,
          width: 150.0,
          imageLink:
              'https://sportshub.cbsistatic.com/i/2021/09/08/e23e97f1-4f4e-4129-afeb-a7ca6fd3f316/one-piece.png?width=1200',
        ),
        SizedBox(
          height: 20,
        ),
        Text("737 Rs"),
        SizedBox(
          height: 20.0,
        ),
        Text("Published: 09.12.2020"),
        SizedBox(
          height: 30.0,
          child: Container(
            child: Center(
              child: Text(
                "More Info",
                style: TextStyle(
                    backgroundColor: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 30.0,
          width: 50.0,
          child: Container(
            child: Center(
              child: Text(
                "Add to wishlist",
                style: TextStyle(
                    fontWeight: FontWeight.bold, backgroundColor: Colors.yellow),
              ),
            ),
          ),
        )
      ],
    );
  }
}
