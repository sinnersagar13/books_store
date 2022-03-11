import 'package:book_store/screens/book_description.dart';
import 'package:book_store/screens/books_page.dart';
import 'package:book_store/screens/categories_page.dart';
import 'package:book_store/screens/homepage.dart';
import 'package:book_store/screens/homepage_screen.dart';
import 'package:book_store/screens/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookstore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor: Colors.blue),
      home: HomePageScreen(),
      routes: {
        'home': (context) => HomePage(),
        'searchPage': (context) => SearchPage(),
        'description': (context) => BookDescription(),
        'booksPage': (context) => BooksPage(),
        'categoriesPage':(context) => CategoriesPage(),
      },
    );
  }
}
