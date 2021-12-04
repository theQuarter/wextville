import 'package:flutter/material.dart';

class settingComponent extends StatefulWidget {
  const settingComponent({Key? key}) : super(key: key);

  @override
  _settingComponentState createState() => _settingComponentState();
}

class _settingComponentState extends State<settingComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("settings Component"),
    );
  }
}
