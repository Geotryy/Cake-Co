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
          // Cor do fundo do container
          padding: EdgeInsets.symmetric(vertical: 10),
          child: FixedButtonContainer(item: item,)
),
        appBar: AppBar(
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
                  color: AppColors.fuchsia)),
        ),
        backgroundColor: AppColors.roseLight,
        body: BodyProductScreen(item: item));
  }
}

// CONTAINER DOS BOTÕES FIXADOS NA PARTE INFERIOR
class FixedButtonContainer extends StatefulWidget {
  FixedButtonContainer({super.key, required this.item});
  final itemModel item;

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
        GestureDetector(
          onTap: () {
            setState(() {
              widget.item.isFavorited = !widget.item.isFavorited;
              print('foi favoritado');
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
