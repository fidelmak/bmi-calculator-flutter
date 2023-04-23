import 'package:flutter/material.dart';
import './homePage.dart';
import 'forget_p.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Authent';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      initialRoute: '/',
      routes: routes,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: HomePage(),
      ),
    );
  }
}

Map<String, WidgetBuilder> routes = {
  '/HomePage': (BuildContext context) => HomePage(),
  //'/home2': (BuildContext context) => home(),
  '/Forget_p': (BuildContext context) => Forget_p(),
};
