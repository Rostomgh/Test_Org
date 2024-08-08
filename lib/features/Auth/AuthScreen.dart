import 'package:flutter/material.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Auth/Widget/CustomInput.dart';

class AuthScreen extends StatefulWidget {
  
   AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}
final TextEditingController email = TextEditingController();

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomInput
            (icon: Icons.email,
              hint: 'email',obc: true,keyboardType: TextInputType.emailAddress,mycontroller:email,valid: (value) {
                      if (value == '') {
                        return 'Enter Email';
                      }
                      return null;
                    },),
            CustomButton(onpress: (){},teB: 'Next',),
          ],
        ),
      ),
    );
  }
}
