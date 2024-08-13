import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_org/features/Home/HomeScreen.dart';
import 'package:test_org/features/Profile/ProfileScreen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  List<Widget> pages = [
    HomeScreen(),
    ProfileScreen(),
    // AddPostScreen(),
    // EventsScreen(),
    // ProfileScreen(),
  ];
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeLayout(int index, BuildContext context) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ChangeLayout());
    }
  }
}