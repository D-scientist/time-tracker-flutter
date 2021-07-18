import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_tracker_app/app/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.orangeAccent,
      systemNavigationBarColor: Colors.amberAccent,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LandingPage(),
    );
  }
}
