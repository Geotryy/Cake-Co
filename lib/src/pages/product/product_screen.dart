import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/pages/product/body.dart';
import 'package:cardapio_app/src/utils/appbar.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
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
            // Cor do fundo do container
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FixedButtonContainer(
              item: item,
            )),
        appBar: CustomAppBar(),
        backgroundColor: AppColors.roseLight,
        body: BodyProductScreen(item: item));
  }
}

// CONTAINER DOS BOTÕES FIXADOS NA PARTE INFERIOR
class FixedButtonContainer extends StatefulWidget {
  const FixedButtonContainer({super.key, required this.item});
  final ItemModel item;

  @override
  State<FixedButtonContainer> createState() => _FixedButtonContainerState();
}

class _FixedButtonContainerState extends State<FixedButtonContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //BOTÃO DE FAVORITAR
        GestureDetector(
          onTap: () {
            setState(() {
              widget.item.isFavorited = !widget.item.isFavorited;
            });
          },
          child: Container(
            width: size.width * 0.15, // Tamanho proporcional
            height: size.width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), // Menor arredondamento
              color: AppColors.rose,
            ),
            child: Icon(
              widget.item.isFavorited
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: AppColors.snow,
              size: size.width * 0.07, // Ícone proporcional
            ),
          ),
        ),
        //BOTÃO DE ENTRAR EM CONTATO
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.015,
              horizontal: size.width * 0.015,
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
                SizedBox(
                    width:
                        size.width * 0.02), // Espaçamento entre texto e ícone
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
