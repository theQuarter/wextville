class TrendingCards {
  static final Users = [
    User(
        id: 1,
        image: "assets/images/Climate1.png",
        name: "Dr.kiran kshirsagar",
        userimage: "assets/images/Profile.png"),
    User(
        id: 2,
        image: "assets/images/Climate1.png",
        name: "Dr.noval plash",
        userimage: "assets/images/Profile.png"),
    User(
        id: 3,
        image: "assets/images/Climate1.png",
        name: "Dr.viral devath",
        userimage: "assets/images/Profile.png"),
  ];
}

class User {
  final int id;
  final String image;
  final String userimage;
  final String name;

  User(
      {required this.id,
      required this.image,
      required this.name,
      required this.userimage});
}
