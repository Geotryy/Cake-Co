import 'package:cardapio_app/src/utils/appbar.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class FavoritedScreen extends StatefulWidget {
  const FavoritedScreen({super.key});

  @override
  State<FavoritedScreen> createState() => _FavoritedScreenState();
}

class _FavoritedScreenState extends State<FavoritedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake & Co.',
            style: TextStyle(
                fontFamily: 'Cocogoose',
                fontSize: 24,
                color: AppColors.fuchsia)),
      ),
      backgroundColor: Color(0XFFFFF1F6),
    body: Container());
  }
}
