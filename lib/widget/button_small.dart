import 'package:flutter/material.dart';


class ButtonSmall extends StatelessWidget {
  final String title;

  ButtonSmall({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        
      ),
      onPressed: (){

    }, child: Text(title,style: TextStyle(color: Colors.white),));
  }
}