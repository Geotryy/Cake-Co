import 'package:cardapio_app/src/models/item_model.dart';

itemModel boloBeijinho = itemModel(
    itemName: 'Bolo Beijinho de Chocolate',
    imgUrl: 'assets/images/cardapio/beijinho.png',
    unit: 'kg',
    price: 150.00,
    description: 'Nosso famoso bolo Beijinho de Chocolate',
    peso: 1.00,
     restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],);
itemModel boloBanoffe = itemModel(
  itemName: 'Bolo Banoffe',
  imgUrl: 'assets/images/cardapio/banoffe.png',
  unit: 'kg',
  price: 200.00,
  description: 'Nosso famoso Banoffe',
  peso: 1.00,
  restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
itemModel bolo3 = itemModel(
  itemName: 'Bolo Frutas Vermelhas com KitKat',
  imgUrl: 'assets/images/cardapio/frutas.png',
  unit: 'kg',
  price: 296.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
   restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
itemModel bolo5 = itemModel(
  itemName: 'Bolo Ninho com Chocolate',
  imgUrl: 'assets/images/cardapio/ninho.png',
  unit: 'kg',
  price: 275.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
   restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);
itemModel bolo6 = itemModel(
  itemName: 'Bolo Beijinho de Chocolate',
  imgUrl: 'assets/images/cardapio/beijinho.png',
  unit: 'kg',
  price: 150.00,
  description: 'Nosso famoso bolo Beijinho de Chocolate',
  peso: 1.00,
   restricoes: ["Contém lactose", "Não é vegano", "Pode conter glúten"],
);

List<itemModel> items = [boloBeijinho, boloBanoffe, bolo3, bolo5, bolo6];

List<String> categories = ['Tudo', 'Bolos', 'Cookies', 'Docinhos'];
