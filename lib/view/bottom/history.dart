import 'package:flutter/material.dart';

import 'package:sample_ui/constant/constant.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 20, right: 15, bottom: 8),
        child: ListView(
          children: [
            MainTile(
                text: "Meeting History",
                icon: Icons.menu,
                widget: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/image/mubaaaa.jpeg"),
                ),
                size: 18),
          ],
        ),
      ),
    );
  }
}
