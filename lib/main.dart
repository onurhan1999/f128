import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gustopia/view/bottombar_view.dart';
import 'package:gustopia/view/login_view.dart';
import 'package:gustopia/view/main_view.dart';
import 'package:gustopia/view/signup_view.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
        home: LoginView()
    );
  }
}
