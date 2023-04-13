import 'package:flutter/material.dart';
import 'package:loginregister/screen/login_page.dart';
import 'package:loginregister/screen/mainpage.dart';
import 'package:loginregister/screen/register_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: LoginPage(),
        routes: {
          LoginPage.routename : (ctx) => LoginPage(),
          RegisterPage.routename :(ctx) => RegisterPage() ,
          Mainpage.routename : (ctx) => Mainpage()
        },
    );
  }
}
