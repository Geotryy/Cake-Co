import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

@override
  Widget build(BuildContext context) {
    return AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.fuchsia,
            ), // Ícone que você quer
            onPressed: () {
              Navigator.pop(context);
              // Aqui você define o que acontece quando o ícone é clicado
            },
          ),
          backgroundColor: Colors.transparent,
          title: Text('Cake & Co.',
              style: TextStyle(
                  fontFamily: 'Cocogoose',
                  fontSize: 24,
                  color: AppColors.fuchsia)),);
  }
 @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Implementando preferredSize
}