// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student_details extends StatefulWidget {
  const Student_details({super.key});

  @override
  State<Student_details> createState() => _Student_detailsState();
}

class _Student_detailsState extends State<Student_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Student Details"),
        ),
      ),
      body: Stack(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("images/avatar.jpg"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Rgister no :",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),),
                  Text("00000",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Department :",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),),
                  Text("BCOM",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Phone no :",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),),
                  Text("1234567890",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email :",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    )
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("abcd@gmail.com",
                    style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      )
                    ),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466B2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Accept",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    )
                  ),),),
                  ),
                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466B2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                     child: Center(child: Text("Reject",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    )
                  ),),),
                  ),
                ],
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}