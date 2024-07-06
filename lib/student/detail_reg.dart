// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Detail_Reg extends StatefulWidget {
  const Detail_Reg({super.key});

  @override
  State<Detail_Reg> createState() => _Detail_RegState();
}

class _Detail_RegState extends State<Detail_Reg> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: Stack(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("json/Animation.json",
            repeat: false,
            height: height/3
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Thank You!",style: GoogleFonts.poppins(
                  textStyle:TextStyle(
                    color: Colors.green,
                    fontSize: 25
                  )
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Registration is Successfull",style: GoogleFonts.poppins(
                  textStyle:TextStyle(
                    fontSize: 25
                  )
                ),)
              ],
            ),
          ],
        ),
        Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/15,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Center(
                      child: Text("Done",style:TextStyle(
                        fontSize: 19,
                        color: Colors.white
                      )),
                    ),
                  ),
                ),
              ),
            )
        ]
      ),
    );
  }
}