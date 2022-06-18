import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample_ui/constant/constant.dart';

class LeadsScreen extends StatelessWidget {
  LeadsScreen({Key? key}) : super(key: key);
  List<HexColor> colrs = [
    HexColor("#E6BB2C"),
    HexColor("#D2B65B"),
    HexColor("#F0E093"),
    HexColor("#F0E093"),
    HexColor("#DCB842"),
    HexColor("#B68027"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 20, right: 15, bottom: 8),
        child: ListView(
          children: [
            MainTile(
                text: "Leads",
                icon: Icons.menu,
                widget: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/image/mubaaaa.jpeg"),
                ),
                size: 18),
            const SizedBox(
              height: 18,
            ),
            Card(
              elevation: 0.5,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle:
                          TextStyle(fontSize: 16, color: HexColor("#C2C2C2")),
                      suffixIconColor: HexColor("#C2C2C2"),
                      suffixIcon: const Icon(
                        Icons.search,
                      ),
                      // contentPadding: EdgeInsets.all(4),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 750,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, int) {
                    return Card(
                      elevation: 0.5,
                      child: Container(
                        height: 180,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Talan Ekstrom Bothman",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_pin,
                                            size: 16,
                                          ),
                                          Text(
                                            "Kakkanad, Kochi",
                                            style: TextStyle(
                                                color: HexColor("#353535"),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Created By : Admin",
                                        style: TextStyle(
                                            color: HexColor("#353535"),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("Remarks :",
                                          style: TextStyle(
                                              color: HexColor("#353535"),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("12-02-2022",
                                          style: TextStyle(
                                              color: HexColor("#969696"),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300)),
                                      CircleAvatar(
                                        backgroundColor: HexColor("F9F9F9"),
                                        child: Icon(
                                          Icons.whatsapp,
                                          color: HexColor("#7AD06D"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: HexColor("F9F9F9"),
                                        child: Icon(
                                          Icons.phone,
                                          color: HexColor("#353535"),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: colrs),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Convert",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: HexColor("#B68027")),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Add Remark",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
