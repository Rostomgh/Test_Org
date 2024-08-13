import 'package:flutter/material.dart';

class CustomMiniInput extends StatelessWidget {
  const CustomMiniInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10 ),
          hintText: '----',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
