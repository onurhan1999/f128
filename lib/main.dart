import 'package:flutter/material.dart';
import 'package:gustopia/view/bottombar_view.dart';
import 'package:gustopia/view/login_view.dart';
import 'package:gustopia/view/main_view.dart';
import 'package:gustopia/view/signup_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: BottomBarView()
    );
  }
}
