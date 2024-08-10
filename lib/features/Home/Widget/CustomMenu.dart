import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu_outlined,color: Colors.white,)),
          const SizedBox(width: 80,),
          const Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Current Location',style: TextStyle(fontFamily: 'MyFont',fontSize: 12,fontWeight: FontWeight.w200,color: Colors.white),),
              SizedBox(height: AppSizes.smallH,),
              Text('New Yourk, USA',style: TextStyle(fontFamily: 'MyFont',fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xffF4F4FE)),),
      
            ],
          ),
          const SizedBox(width: 80,),
          IconButton(onPressed: (){}, icon:Container(height: 35,width:35,child: Image.asset(Assets.notif,height: 16,width: 15,),) )
          
          
      
        ],
      ),
    );
  }
}
