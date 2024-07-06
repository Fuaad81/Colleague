// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onam_Fest_Detail extends StatefulWidget {
  const Onam_Fest_Detail({super.key});

  @override
  State<Onam_Fest_Detail> createState() => _Onam_Fest_DetailState();
}

class _Onam_Fest_DetailState extends State<Onam_Fest_Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/5.5,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Onam Festival",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xF91754CE))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Date",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                ":8/28/2023",
                                style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Time",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                ":9:00 Am",
                                style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                ":College Hall",
                                style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Host",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 55),
                              child: Text(
                                ":Ameen",
                                style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: [
                Text(
                  "Participants",
                  style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Student Name"),
                    subtitle: Text("Department"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/manwithstar1.jpg",height: height/18,)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Student Name"),
                    subtitle: Text("Department"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Student Name"),
                    subtitle: Text("Department"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Student Name"),
                    subtitle: Text("Department"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
