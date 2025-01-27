import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/pages/product/body.dart';
import 'package:cardapio_app/src/pages/product/bodyteste.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  Teste({super.key, required this.item});

  itemModel item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: sendMessageButton(),
backgroundColor: Colors.white,
      
body: Bodyteste(item: item,),
    );
  }
}

FloatingActionButton sendMessageButton(){
return FloatingActionButton.extended(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          label: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.rose),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Entrar em contato',
                          style: TextStyle(color: AppColors.snow, fontSize: 17),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.message,
                          color: AppColors.snow,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                style: IconButton.styleFrom(
                  shape: CircleBorder(
                    side: BorderSide(color: AppColors.rose, width: 2),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.favorite_outline_rounded),
                color: AppColors.snow,
              ),
            ],
          ));}