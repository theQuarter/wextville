class TopScrollCards {
  static final Items = [
    Item(id: 1, icon: "assets/icons/heart.png", name: "Cardiology"),
    Item(id: 2, icon: "assets/icons/injection.png", name: "test1"),
    Item(id: 3, icon: "assets/icons/doctor.png", name: "test2"),
  ];
}

class Item {
  final int id;
  final String icon;
  final String name;

  Item({required this.id, required this.icon, required this.name});
}
