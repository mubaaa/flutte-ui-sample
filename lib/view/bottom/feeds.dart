import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:sample_ui/constant/constant.dart';

class FeedsScreen extends StatelessWidget {
  FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 20, right: 15, bottom: 8),
        child: ListView(
          children: [
            MainTile(
              size: 18,
              icon: Icons.menu,
              text: "Feeds",
              widget: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/image/mubaaaa.jpeg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .9,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, int) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      child: ListTile(
                        leading: const CircleAvatar(
                          radius: 19,
                          backgroundImage:
                              AssetImage("assets/image/mubaaaa.jpeg"),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "Mira Franci ",
                                style: TxtStyle(FontWeight.w500),
                              ),
                              TextSpan(
                                  text: "has Visited a new business ",
                                  style: TxtStyle(FontWeight.w200)),
                              TextSpan(
                                text: "Evergreen Continental, Edappilly ",
                                style: TxtStyle(FontWeight.w500),
                              ),
                            ])),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Created on 12-02-2022 | Upadated on 12-02-2022",
                              style: TextStyle(
                                  fontSize: 10, color: HexColor("#969696")),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle TxtStyle(FontWeight fontWeight) {
  return TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: fontWeight,
      color: HexColor("#252525"));
}
