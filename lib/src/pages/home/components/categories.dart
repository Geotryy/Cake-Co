import 'package:cardapio_app/src/pages/home/components/category_tile.dart';
import 'package:cardapio_app/src/config/app_data.dart' as appData ;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorieOption extends StatefulWidget {
  const CategorieOption({super.key});

  @override
  State<CategorieOption> createState() => _CategorieOptionState();
}

class _CategorieOptionState extends State<CategorieOption> {
  bool isSelected = false;


  String selectedCategory = 'Tudo';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CategoryTile(
            onPressed: () {
              setState(() {
                selectedCategory = appData.categories[index];
              });
            },
            category: appData.categories[index],
            isSelected: appData.categories[index] == selectedCategory,
          );
        },
        separatorBuilder: (_, index) => SizedBox(
          width: 10,
        ),
        itemCount: appData.categories.length,
      ),
    );
  }
}
