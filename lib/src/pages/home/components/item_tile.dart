import 'package:cardapio_app/src/models/item_model.dart';
import 'package:cardapio_app/src/pages/product/product_screen.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class ItemLayout extends StatelessWidget {
   const ItemLayout(
      {super.key,
    
      required this.item
});

  final itemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, (MaterialPageRoute(builder: (c) => ProductScreen(item: item))));
      },
            child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: AppColors.roseLight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(item.imgUrl, width:MediaQuery.of(context).size.width * 0.5 ,),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(26), color: AppColors.snow),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Informações do produto
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'R\$ ${item.price.toStringAsFixed(2)}', // Formatação correta
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        item.itemName,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  // Ícone de seta
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF54784), // Cor rosa do botão
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_outward_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
        ),),]),
      ),
    );
  }
}
