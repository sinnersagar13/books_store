import 'package:book_store/screens/book_description.dart';
import 'package:book_store/screens/books_page.dart';
import 'package:book_store/screens/categories_page.dart';
import 'package:book_store/screens/homepage.dart';
import 'package:book_store/screens/search_page.dart';
import 'package:book_store/widgets/card_tile.dart';
import 'package:book_store/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

// import '../widgets/app_bottom_navigation_bar.dart';
import '../widgets/app_drawer.dart';
// import '../widgets/card_widget.dart';
import '../widgets/categories_list.dart';
import '../widgets/text_button.dart';
import '../widgets/tile_row.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BooksPage(),
    SearchPage(),
    CategoriesPage(),
    BookDescription()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookstore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        elevation: 12.0,
        primary: true,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.menu),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.blue,
            ),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.blue,
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              color: Colors.blue,
            ),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
