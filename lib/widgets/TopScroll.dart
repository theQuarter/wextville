import 'package:flutter/material.dart';
import 'package:wextville/Models.dart/top_Scroll.dart';

class TopScroll extends StatelessWidget {
  final Item item;

  const TopScroll({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 220,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/DoctorList');
        },
        child: Card(
          color: Colors.white,
          shadowColor: Colors.black12,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: 55,
                child: Card(
                  //color: Color(0xff00B9AE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Container(
                    constraints: BoxConstraints.expand(
                      height: 70,
                      width: 55,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff00FFF0), Colors.blue])),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(item.icon),
                    ),
                  ),
                ),
              ),
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
