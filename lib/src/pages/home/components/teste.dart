import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/pages/home/components/body.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  Teste({super.key, required this.item});

  itemModel item;
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
        backgroundColor: AppColors.roseLight,
       body: Body(item: item),);
  }
}
