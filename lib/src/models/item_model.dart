class itemModel{
String itemName;
String imgUrl;
String unit;
double price;
double peso;
String description;
List<String>? restricoes;


itemModel ({
required this.itemName,
required this.imgUrl,
required this.unit,
required this.price,
required this.peso,
required this.description,
this.restricoes,
});

}