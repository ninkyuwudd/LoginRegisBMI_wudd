import 'package:flutter/material.dart';


class SmallField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String title;
  SmallField({required this.title,required this.hint,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hint
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}