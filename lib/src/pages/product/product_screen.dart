import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/pages/product/body.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.item});

  final itemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
         Container(
          decoration: BoxDecoration(
             color: Color(0XFFFFF1F6),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, -3),
              )
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: FixedButtonContainer()
        ),
        appBar: AppBar(
leading: IconButton(onPressed: (){}, icon: icon),
        backgroundColor: Colors.transparent,
          title: Text('Cake & Co.',
              style: TextStyle(
                  fontFamily: 'Cocogoose',
                  fontSize: 24,
                  color: AppColors.fuchsia)),
        ),
        backgroundColor: AppColors.roseLight,
        body: BodyProductScreen(item: item)
  );}}


// CONTAINER DOS BOTÕES FIXADOS NA PARTE INFERIOR
class FixedButtonContainer extends StatelessWidget {
  const FixedButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            print("Botão favorito clicado");
          },
          child: Container(
            width: size.width * 0.15, // Tamanho proporcional
            height: size.width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), // Menor arredondamento
              color: AppColors.rose,
            ),
            child: Icon(
              Icons.favorite_rounded,
              color: AppColors.snow,
              size: size.width * 0.07, // Ícone proporcional
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Entrar em contato clicado");
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.015,
              horizontal: size.width * 0.05,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.rose,
            ),
            child: Row(
              children: [
                Text(
                  'Entrar em contato',
                  style: TextStyle(
                    color: AppColors.snow,
                    fontSize: size.width * 0.04, // Texto proporcional
                  ),
                ),
                SizedBox(width: size.width * 0.02), // Espaçamento entre texto e ícone
                Icon(
                  Icons.message,
                  color: AppColors.snow,
                  size: size.width * 0.06, // Ícone proporcional
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
Icons.arrow_back_ios_new_rounded, color: AppColors.fuchsia