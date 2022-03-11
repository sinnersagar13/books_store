import 'package:flutter/material.dart';

import '../widgets/card_tile.dart';
import '../widgets/categories_list.dart';
import '../widgets/text_button.dart';
import '../widgets/text_field_input.dart';
import '../widgets/tile_row.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({ Key? key }) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        TextFieldInput(
          hintText: 'Enter keywords, title, author or ISBN',
        ),
        
        
        SizedBox(
          height: 20,
        ),
        
        
        
        SizedBox(
          height: 30.0,
        ),
        Center(
          child: Text(
            'Book Categories',
            style: TextStyle(
                backgroundColor: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        CategoriesList(),
        SizedBox(
          height: 50.0,
        ),
        Container(
          color: Colors.blue,
          child: Center(child: Text("Designed By Ansh Goyal ")),
        ),
      ],
    );
  }
}