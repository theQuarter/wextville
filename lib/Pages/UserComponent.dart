import 'package:flutter/material.dart';

class userComponent extends StatefulWidget {
  const userComponent({Key? key}) : super(key: key);

  @override
  _userComponentState createState() => _userComponentState();
}

class _userComponentState extends State<userComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("User Component"),
    );
  }
}
