import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class BodyProductScreen extends StatelessWidget {
  const BodyProductScreen({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Column(children: [
          // IMAGEM DO ITEM
          Expanded(
            child: Hero(
              tag: item.imgUrl,
              child: Image.asset(
                item.imgUrl,
              ),
            ),
          ),

          // CONTAINER COM INFORMAÇÕES
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(60),
                ),
                color: Color(0XFFFFF1F6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // WIDGET PARA REPRESENTAR A ROLAGEM DA TELA
                  Center(
                    child: Container(
                      width: 40,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 202, 202, 202)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),

                  // NOME DO PRODUTO
                  Text(
                    item.itemName,
                    style: TextStyle(
                        color: AppColors.fuchsia,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                    maxLines: 2,
                  ),
                  // PREÇO DO PRODUTO
                  Text(
                    'R\$ ${item.price}',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  // DESCRIÇÃO DO PRODUTO
                  Text(
                    item.description,
                    style: TextStyle(
                        color: AppColors.greyText,
                        height: 1.5,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // PESO DO PRODUTO
                  Text(
                    "Peso: ${item.peso} ${item.unit}",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                    maxLines: 6,
                  ),
                  SizedBox(height: size.height * 0.03),
                  // SEÇÃO DE RESTRIÇÕES
                  if (item.restricoes!.isNotEmpty) ...[
                    const Text(
                      "Restrições alimentares:",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    ...item.restricoes!.map(
                      (restricao) => Text(
                        "• $restricao",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
