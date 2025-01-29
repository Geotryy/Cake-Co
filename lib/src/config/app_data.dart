import 'package:cardapio_app/src/models/item_model.dart';

ItemModel boloBeijinho = ItemModel(
  itemName: 'Bolo Beijinho de Chocolate',
  imgUrl: 'assets/images/cardapio/beijinho.png',
  unit: 'kg',
  price: 150.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
  isFavorited: false,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
ItemModel boloBanoffe = ItemModel(
  itemName: 'Bolo Banoffe',
  imgUrl: 'assets/images/cardapio/banoffe.png',
  unit: 'kg',
  price: 200.00,
  description: 'Nosso famoso Banoffe',
  peso: 1.00,
  isFavorited: false,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
ItemModel bolo3 = ItemModel(
  itemName: 'Bolo Frutas Vermelhas com KitKat',
  imgUrl: 'assets/images/cardapio/frutas.png',
  unit: 'kg',
  price: 296.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
  isFavorited: false,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
ItemModel bolo5 = ItemModel(
  itemName: 'Bolo Ninho com Chocolate',
  imgUrl: 'assets/images/cardapio/ninho.png',
  unit: 'kg',
  price: 275.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
  isFavorited: false,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
ItemModel bolo6 = ItemModel(
  itemName: 'Bolo Beijinho de Chocolate',
  imgUrl: 'assets/images/cardapio/beijinho.png',
  unit: 'kg',
  price: 150.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
  isFavorited: false,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);

List<ItemModel> items = [boloBeijinho, boloBanoffe, bolo3, bolo5, bolo6];

List<String> categories = ['Tudo', 'Bolos', 'Cookies', 'Docinhos'];

List<ItemModel> favoritos = items.where((item) => item.isFavorited).toList();
