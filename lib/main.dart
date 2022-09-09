import 'package:flutter/material.dart';
import 'package:my_applicaion/page/loginPage.dart';
import 'package:my_applicaion/pages/homepage.dart';
import '../utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future main() async{
WidgetsFlutterBinding.ensureInitialized();

final prefs = await SharedPreferences.getInstance();
Constants.prefs = await SharedPreferences.getInstance();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter App',
    home: Constants.prefs.getBool('loggedIn')==true ? HomePageFB(): LoginPage() ,
    theme: ThemeData( 
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context) => const LoginPage(),
      "/home":(context) => const HomePageFB(),
    },
    
  ));
}
