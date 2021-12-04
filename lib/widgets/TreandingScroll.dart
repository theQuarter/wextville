import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/trending_Scroll.dart';

class TrendingScroll extends StatelessWidget {
  final User user;

  const TrendingScroll({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      margin: EdgeInsets.all(5),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black12,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              user.image,
              height: 110,
              width: 250,
              fit: BoxFit.fill,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    user.userimage,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(user.name)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
