import 'package:flutter/material.dart';

import '../widget/register_form.dart';



class RegisterPage extends StatelessWidget {
  static const routename = "/register";
  @override
  Widget build(BuildContext context) {
    // final addparams = ModalRoute.of(context)?.settings.arguments as Function();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: RegisterFormWidget(),
      ),
    );
  }
}