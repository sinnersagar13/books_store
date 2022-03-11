import 'package:flutter/material.dart';

import 'card_tile.dart';

class TileRow extends StatelessWidget {
  const TileRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // scrollDirection: Axis.horizontal,
      children: [
        CardTile(
          boxFit: BoxFit.fill,
          name: "Free Books",
          height: 200.0,
          width: 150.0,
          imageLink:
              'https://media.gettyimages.com/photos/stack-of-books-picture-id157482029?s=612x612',
        ),
        CardTile(
          boxFit: BoxFit.fill,
          height: 200.0,
          width: 150.0,
          name: "Books for childern",
          imageLink:
              'https://images.news18.com/ibnlive/uploads/2021/04/1619106481_shutterstock_783563194.jpg?im=FitAndFill,width=1200,height=1200',
        ),
        CardTile(
          boxFit: BoxFit.fill,
          height: 200.0,
          width: 150.0,
          name: "Drawing books",
          imageLink:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFPu78fwRi51qudK4UaZRrU696UB1X-S0FZw&usqp=CAU',
        ),
        CardTile(
            boxFit: BoxFit.fill,
            height: 200.0,
            width: 150.0,
            name: "Encyclopedias",
            imageLink:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu1TflCyfWDMNu6q7hVfgolfdYix7qE377UQ&usqp=CAU')
      ],
    );
  }
}
