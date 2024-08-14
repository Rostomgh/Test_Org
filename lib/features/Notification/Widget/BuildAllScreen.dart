import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Notification/Widget/CustomCardInvite.dart';
import 'package:test_org/features/Notification/Widget/CustomWhithoutBu.dart';

class BuildAllScreen extends StatelessWidget {
  const BuildAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CustomCardInvite(
          desc: "London's Mother's",
          imginvite: Assets.invite,
          time: 'Just now',
          invite: 'Invite Jo Malone',
          name: 'David Silbia'),
      SizedBox(
        height: AppSizes.notif,
      ),
      CustomWithoutBu(
          desc1: 'following you',
          imginvite1: Assets.invite1,
          invite1: 'Started',
          name1: 'Adnan Safi',
          time1: '5 min ago'),
            SizedBox(
        height: AppSizes.notif,
      ),
          CustomCardInvite(
          desc: " Evening of Smooth Jazz",
          imginvite: Assets.invite3,
          time: '20 min ago',
          invite: 'Invite A virtual',
          name: 'Joan Baker'),
                  SizedBox(
        height: AppSizes.notif,
      ),
        CustomWithoutBu(
          desc1: 'following you',
          imginvite1: Assets.invite4,
          invite1: 'Started',
          name1: 'Ronald C.Kinch',
          time1: '5 min ago'),
    ]);
  }
}


