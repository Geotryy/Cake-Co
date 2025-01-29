import 'package:cardapio_app/src/config/app_data.dart';
import 'package:cardapio_app/src/pages/home/components/categories.dart';
import 'package:cardapio_app/src/pages/home/components/item_tile.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:cardapio_app/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Índice da categoria selecionada
  int selectedCategoryIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Cake & Co.',
            style: TextStyle(
                fontFamily: 'Cocogoose',
                fontSize: 24,
                color: AppColors.fuchsia)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquise aqui...',
                      hintStyle: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 136, 136, 136)),
                      filled: true,
                      fillColor: AppColors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink, // Cor de fundo do botão
                    shape: BoxShape.circle, // Formato circular
                  ),
                  child: IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    iconSize: 24,
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Lista de categorias (horizontal) //
            Align(
              alignment: Alignment.center,
              child: CategorieOption(),
            ),
            SizedBox(
              height: 30,
            ),

            //   LISTA DE ITEMS //
            Expanded(
              child: ListView.separated(
                  itemBuilder: (_, index) {
                    return ItemLayout(
                      item: appData.items[index],
                    
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
