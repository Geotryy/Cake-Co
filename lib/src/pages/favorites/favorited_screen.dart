import 'package:cardapio_app/src/config/app_data.dart';
import 'package:cardapio_app/src/utils/appbar.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class FavoritedScreen extends StatefulWidget {
  const FavoritedScreen({super.key});

  @override
  State<FavoritedScreen> createState() => _FavoritedScreenState();
}

class _FavoritedScreenState extends State<FavoritedScreen> {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Favoritos")),
    body: favoritos.isEmpty
        ? Center(child: Text("Nenhum item favoritado."))
        : GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Define quantas colunas
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemCount: favoritos.length,
            itemBuilder: (context, index) {
              final item = favoritos[index];
              return Card(
                child: Column(
                  children: [
                    Image.asset(item.imgUrl, height: 100, fit: BoxFit.cover),
                    Text(item.itemName),
                    IconButton(
                      icon: Icon(
                        item.isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: item.isFavorited ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          item.isFavorited = !item.isFavorited;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
  );
}
}