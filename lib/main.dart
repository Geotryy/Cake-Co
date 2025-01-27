import 'package:cardapio_app/src/pages/intro/intro_page.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.rose),
        useMaterial3: true,
      ),
      home: IntroPage(),
    );
  }
}

