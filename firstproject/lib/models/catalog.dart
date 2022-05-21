class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: "001",
        name: "iPhone 12 pro",
        desc: "iPhone of 12 Generation",
        price: 70000,
        color: "#33505a",
        image:
            "https://m-cdn.phonearena.com/images/phones/81071-350/Apple-iPhone-12-Pro-Max.jpg")
  ];
}
