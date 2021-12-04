import 'package:flutter/material.dart';

class noteComponent extends StatefulWidget {
  const noteComponent({Key? key}) : super(key: key);

  @override
  _noteComponentState createState() => _noteComponentState();
}

class _noteComponentState extends State<noteComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Note Component"),
    );
  }
}
