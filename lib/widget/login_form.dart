import 'package:flutter/material.dart';
import '../model/model_user.dart';
import 'field_common.dart';

class LoginFormWidget extends StatefulWidget {
  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  // const LoginFormWidget({super.key});
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  bool show = false;
  // final Users users = Users();
  List<User> _userdata = [
      User(
          id: 'usr1',
          username: "wudd",
          email: "wudd@gmail.com",
          phone: "085236108154",
          password: "wudd123"),
      User(
          id: 'usr2',
          username: "smith",
          email: "smith@gmail.com",
          phone: "0987654321",
          password: 'inipassword')
    ];

  @override
  Widget build(BuildContext context) {
    void _adduserdata(String id, String username, String email, String phone,
        String password) {
      final newdatauser = User(
          id: id,
          username: username,
          email: email,
          phone: phone,
          password: password);
      setState(() {
        _userdata.add(newdatauser);
      });
    }

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SmallField(
                title: "Username",
                hint: "insert username",
                controller: username),
            SmallField(
                title: "Password",
                hint: "insert password",
                controller: password),
            SizedBox(
              height: 10,
            ),
            Visibility(
                visible: show,
                child: Text(
                  "Username / Password Salah!!",
                  style: TextStyle(color: Colors.red),
                )),

            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                onPressed: () {
                  try {
                    if (_userdata
                                .where((e) => e.username == username.text)
                                .first !=
                            null &&
                        _userdata
                                .where((e) => e.password == password.text)
                                .first !=
                            null) {

                      Navigator.of(context).pushReplacementNamed('/mainpage',arguments: username.text);
                      
                    }
                  } catch (e) {
                    setState(() {
                      show = true;
                    });

                    print("salah username");
                  }
                  ;
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            Row(
              children: [
                Text("don't have account?"),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('/register', arguments: _adduserdata);
                    },
                    child: Text("Register")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
