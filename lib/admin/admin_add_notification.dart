// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add_Notification extends StatefulWidget {
  const Add_Notification({super.key});

  @override
  State<Add_Notification> createState() => _Add_NotificationState();
}

class _Add_NotificationState extends State<Add_Notification> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
       appBar: AppBar(
          title: Text("Add Notification"),
          centerTitle: true,
          toolbarHeight: height/14,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Row(
                    children: [
                      Text("Event Name",style: GoogleFonts.poppins(
                              textStyle:TextStyle(
                                color: Colors.black,
                                fontSize: 17
                              )
                            ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width/1.1,
                        height: height/16,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffb4466b2))
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Row(
                    children: [
                      Text("Description",style: GoogleFonts.poppins(
                              textStyle:TextStyle(
                                color: Colors.black,
                                fontSize: 17
                              )
                            ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width/1.1,
                        height: height/3,
                        child: TextFormField(
                          maxLines: 8,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffb4466b2))
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/16,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("Send",style: GoogleFonts.poppins(
                                textStyle:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                                )
                              ),),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}