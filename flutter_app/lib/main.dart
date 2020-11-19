import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:route_manager/route_bridge.dart';
import './home_page.dart';
import 'package:modulea/module_a.dart';
import 'package:moduleb/module_b.dart';

import 'package:route_manager/app_config.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    AppRouter.addModuleRoutes([ModuleA(),ModuleB()]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      navigatorKey: AppConfig.navigatorKey,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}




