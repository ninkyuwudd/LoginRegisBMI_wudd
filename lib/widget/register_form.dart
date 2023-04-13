import 'package:flutter/material.dart';
import '../model/list_user.dart';
import 'field_common.dart';

class RegisterFormWidget extends StatefulWidget {
  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final Users users = Users();
  @override
  Widget build(BuildContext context) {
    final addparams = ModalRoute.of(context)?.settings.arguments as Function(
        String id,
        String username,
        String password,
        String email,
        String phone);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SmallField(
                title: "Username",
                hint: "insert username",
                controller: username),
            SmallField(title: "Email", hint: "insert email", controller: email),
            SmallField(title: "Phone", hint: "insert phone", controller: phone),
            SmallField(
                title: "Password",
                hint: "insert password",
                controller: password),
            ElevatedButton(
                onPressed: () {
                  addparams(DateTime.now().toString(), username.text,
                      email.text, phone.text, password.text);
                  Navigator.pop(context);
                },
                child: Text("Register",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
