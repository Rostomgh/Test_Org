import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Auth/Widget/CustomIcon.dart';

class CustomButton extends StatelessWidget {
  final Function() onpress;
  final String teB;
  const CustomButton({super.key, required this.onpress, required this.teB});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 271,
      child: MaterialButton(
         shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: AppColors.primaryColor,
      onPressed: onpress,
      child: Padding(
        padding: const EdgeInsets.only(left: 80),
        child: Row(
          children: [
            Text(teB,style: const TextStyle(
              fontFamily: 'MyFont',
              color: AppColors.whiteColor,fontSize: 18,fontWeight: FontWeight.w400),),
            const Spacer(),
            const Customicon(),
        
        
          ],
        ),
      ),
      
      
      
      ),
    )
    
    
    
    
    ;
  }
}
