import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key, required this.item});

  final itemModel item;
  

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake & Co.',
            style: TextStyle(
                fontFamily: 'Cocogoose',
                fontSize: 24,
                color: AppColors.fuchsia)),
      ),
      backgroundColor: AppColors.roseLight,
      body: SizedBox(
        height: screenHeight,
        child: Column(
          children: [
            // IMAGEM DO ITEM
            Image.asset(item.imgUrl, width: screenWidth * 0.7,),
              
            // CONTAINER COM INFORMAÇÕES
              
            Expanded(
                child: Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                  ),
                  color: Color(0XFFFFF1F6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.itemName,
                    style: TextStyle(
                        color: AppColors.fuchsia,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                    maxLines: 2,
                  ),
                  Text(
                    'R\$ ${item.price}',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        item.description,
                        style: TextStyle(
                            color: AppColors.greyText,
                            height: 1.5,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Peso: ${item.peso} ${item.unit}",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                    maxLines: 6,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.rose),
                        child: Icon(
                          Icons.favorite_rounded,
                          weight: 25,
                          color: AppColors.snow,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.rose),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Entrar em contato',
                                style: TextStyle(
                                    color: AppColors.snow, fontSize: 17),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.message,
                                color: AppColors.snow,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))]),
      ));
   
}}