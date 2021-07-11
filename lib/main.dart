import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/sign_in/sign_in_page.dart';

Void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.orangeAccent,
      systemNavigationBarColor: Colors.amberAccent,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: SignInPage(),
    );
  }
}
