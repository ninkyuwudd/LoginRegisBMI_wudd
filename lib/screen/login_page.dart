import 'package:flutter/material.dart';

import '../widget/login_form.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const routename = "/login";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         
        ),
        margin: EdgeInsets.all(20),
        child: LoginFormWidget()
      ),
    );
  }
}