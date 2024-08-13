import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_org/Logic/cubit/layout_cubit.dart';
import 'package:test_org/core/Router/OngenerateRoute.dart';
import 'package:test_org/features/Auth/AuthScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: const AuthScreen(),
        onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
      ),
    );
  }
}
