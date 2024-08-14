import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomPartAccount extends StatefulWidget {
  final String text;
  final String routeName;
  const CustomPartAccount({
    super.key,
    required this.text,
    required this.routeName,
  });

  @override
  _CustomPartAccountState createState() => _CustomPartAccountState();
}

class _CustomPartAccountState extends State<CustomPartAccount> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _isPressed = !_isPressed;
            });
            Navigator.pushNamed(context, widget.routeName);
          },
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: _isPressed ? AppColors.primaryColor : const Color(0xFF747688),
            ),
          ),
        ),
      ],
    );
  }
}
