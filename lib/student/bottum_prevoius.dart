// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors


import 'package:events/student/onam_festival.dart';
import 'package:flutter/material.dart';

class Bottum_previous extends StatefulWidget {
  const Bottum_previous({super.key});

  @override
  State<Bottum_previous> createState() => _Bottum_previousState();
}

class _Bottum_previousState extends State<Bottum_previous> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Onam_Festival(),));
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/16,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 50),
                      child: Text("Onam Festival",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/16,
                  decoration: BoxDecoration(
                    color: Color(0xffb4466b2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 50),
                    child: Text("Music Festival",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}