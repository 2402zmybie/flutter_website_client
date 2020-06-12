import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    //停顿3秒
    Future.delayed(Duration(seconds: 3), () {
      print('App启动');
      Navigator.pushReplacementNamed(context, 'app');
    });
  }

  @override
  Widget build(BuildContext context) {
    //启动页面使用PageView
    return Center(
      child: Center(
        //层叠组件
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/loading.jpg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                'Flutter_WebSite_Client',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  decoration: TextDecoration.none
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
