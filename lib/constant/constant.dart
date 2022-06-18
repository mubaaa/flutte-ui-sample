import 'package:flutter/material.dart';

class MainTile extends StatelessWidget {
  String text;
  Widget widget;
  IconData icon;
  double size;
  MainTile(
      {Key? key,
      required this.text,
      required this.icon,
      required this.widget,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 25,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(
          text,
          style: TextStyle(fontSize: size, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
        ),
      ),
      const Spacer(flex: 1),
      widget
    ]);
  }
}
