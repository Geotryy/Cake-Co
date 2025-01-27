import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key, required this.category, required this.isSelected, required this.onPressed});

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onPressed,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: isSelected ? AppColors.rose : AppColors.snow,
            border: isSelected
                ? null
                : Border.all(
                    color: Color(0xFF797777), // Cor da borda
                    width: 0.5, // Espessura da borda
                  ) // Sem borda quando não selecionado
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? AppColors.snow : AppColors.rose,
                fontSize: 17,
              ),
            ),
          )),
    );
  }
}
