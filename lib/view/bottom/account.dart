import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sample_ui/constant/constant.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);
  List<HexColor> colrs = [
    HexColor("#B68027"),
    HexColor("#B68027"),
    HexColor("#B68027"),
    HexColor("#E6BB2C"),
    HexColor("#E6BB2C"),
  ];

  List<HexColor> colrs1 = [
    HexColor("#E6BB2C"),
    HexColor("#E6BB2C"),
    HexColor("#F0E093"),
    HexColor("#E6BB2C"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 20, right: 15, bottom: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            MainTile(
              text: "Accounts",
              size: 18,
              icon: Icons.menu,
              widget: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/image/mubaaaa.jpeg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 0.3,
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: MainTile(
                        text: "Evergreen Continental",
                        size: 16,
                        icon: Icons.align_vertical_bottom_rounded,
                        widget: const Icon(Icons.expand_more)),
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Card(
                elevation: 0.5,
                child: Container(
                  height: 215,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "65% Completed",
                          style: TextStyle(
                              fontSize: 16,
                              color: HexColor("#000000"),
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          linearGradient: LinearGradient(colors: colrs),
                          lineHeight: 10,
                          percent: 0.75,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: HexColor("#F6F3E0"),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Divider(
                          color: HexColor("#C2C2C2"),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: colrs1),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text(
                                    "E",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Evergreen Continental",
                                    style: TextStyle(
                                        color: HexColor("#252525"),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Et prasent nibh",
                                    style: TextStyle(
                                        color: HexColor("#6D6D6D"),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text("+91 98455342312",
                                      style: TextStyle(
                                          color: HexColor("#6D6D6D"),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Text("Quoted: 0",
                                          style: TextStyle(
                                              color: HexColor("#B68027"),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                      const SizedBox(
                                        width: 17,
                                      ),
                                      Text("Finalised: 0",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: HexColor("#B68027"),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500))
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text("View Details",
                                      style: TextStyle(
                                        color: HexColor("#6D6D6D"),
                                        fontSize: 10,
                                      ))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      //   backgroundColor: Colors.black,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
