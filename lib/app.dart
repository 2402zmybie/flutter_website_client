import 'package:flutter/material.dart';
import 'pages/about_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  var _currentIndex = 0;
  HomePage _homePage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter企业站实战'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text('首页'),
              icon: Icon(Icons.home)
          )
        ],
      ),
    );
  }
}
