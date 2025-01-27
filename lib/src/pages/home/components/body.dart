import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.item});
  final itemModel item;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Column(children: [
          Expanded(child: Image.asset(item.imgUrl, width: size.width * 0.8,)),
          //FORMULARIO
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //EMAIL
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
                  Text(
                    item.description * 3,
                    style: TextStyle(
                        color: AppColors.greyText,
                        height: 1.5,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
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
            ),
          )
        ]),
      ),
    );
  }
}
