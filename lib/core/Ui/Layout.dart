import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_org/Logic/cubit/layout_cubit.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: NavigationBar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 1.0,
            selectedIndex: cubit.currentIndex,
            
            onDestinationSelected: (value) {
            
              cubit.changeLayout(value, context);
            },
            shadowColor: Colors.black.withOpacity(0.5),
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: Image.asset(
                  Assets.export,
                  height: 24,
                  color: cubit.currentIndex == 0
                      ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Explore',
                
              ),
              NavigationDestination(
                icon: Image.asset(
                  Assets.agenda,
                  height: 24,
                  color: cubit.currentIndex == 1
                        ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Events',
              ),
              NavigationDestination(
                icon: Image.asset(Assets.mainadd, height: 130,width: 130),
                label: '',
              ),
              NavigationDestination(
                icon: Image.asset(
                  Assets.map,
                  height: 24,
                  color: cubit.currentIndex == 3
                      ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Map',
              ),
              NavigationDestination(
                icon: Image.asset(        
                  Assets.profile,
                  color: cubit.currentIndex == 4
                      ? AppColors.primaryColor
                      : AppColors.layout,
                  height: 24,
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}