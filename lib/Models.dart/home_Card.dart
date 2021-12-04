class HomeCard {
  static final Pics = [
    Pic(
        id: 1,
        icon: "assets/images/pic1.png",
        name: "Ask a free health question"),
    Pic(id: 2, icon: "assets/images/pic2.png", name: "Next consults for you"),
    Pic(id: 3, icon: "assets/images/pic3.png", name: "Health Feed"),
    Pic(id: 4, icon: "assets/images/pic4.png", name: "Online Consults"),
  ];
}

class Pic {
  final int id;
  final String icon;
  final String name;

  Pic({required this.id, required this.icon, required this.name});
}
