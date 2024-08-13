import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Notification/Widget/CustomCardInvite.dart';

class BuildAllScreen extends StatelessWidget {
  const BuildAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CustomCardInvite(
        desc:"London's Mother's" ,
          imginvite: Assets.invite,
          time: 'Just now',
          invite: 'Invite Jo Malone',
          name: 'David Silbia'),
          SizedBox(height: AppSizes.notif,),
            CustomCardInvite(
          imginvite: Assets.invite,
          time: 'Just now',
          invite: 'Invite Jo Malone',
          name: 'David Silbia'),

    ]);
  }
}
