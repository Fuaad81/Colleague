// ignore_for_file: camel_case_types, prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Add_Event extends StatefulWidget {
  const Admin_Add_Event({super.key});

  @override
  State<Admin_Add_Event> createState() => _Admin_Add_EventState();
}

class _Admin_Add_EventState extends State<Admin_Add_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Event",
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Event Name",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Time",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Location",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Discription",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 350,
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder()
                        ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffb4472B2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white
                        ),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}