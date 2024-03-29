// ignore_for_file: camel_case_types, prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Food_Festival extends StatefulWidget {
  const Admin_Food_Festival({super.key});

  @override
  State<Admin_Food_Festival> createState() => _Admin_Food_FestivalState();
}

class _Admin_Food_FestivalState extends State<Admin_Food_Festival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Details"),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Food Festival',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffb4466b2),
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Date',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Time',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Location',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('05/09/2025',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('9.00AM',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('College Ground',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    'Description  :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text('''
Corem ipsum dolor sit amet, consectetur 
adipiscing elit. Nunc vulputate libero et velit
interdum, ac aliquet odio mattis. Class aptent
taciti sociosqu ad litora''',
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Host",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffb4466b2))),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Name"),
                    subtitle: Text("Department"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Add Host",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffb4466b2))),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(174, 190, 189, 161),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      trailing: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                    size: 50,
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffb4466b2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Add Host",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffb4466b2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Confirm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
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
