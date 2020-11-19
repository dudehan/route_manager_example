import 'dart:io';

import 'package:flutter/material.dart';
import 'package:route_manager/wx_navigator.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    print('HomePage : build');
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                WXNavigator.pushNamed(routeName:'/firstPage');
              },
              child: Text('go to first page'),
            ),
            RaisedButton(
              onPressed: () {
                WXNavigator.pushNamed(routeName:'/unknownRoute');
              },
              child: Text('unknownRoute'),
            )
          ],
        ),
      ),
    );
  }
}
