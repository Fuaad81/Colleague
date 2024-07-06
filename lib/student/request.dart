// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/student/add_request.dart';
import 'package:events/student/holi_detail.dart';
import 'package:flutter/material.dart';

class Requests extends StatefulWidget {
  const Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Holi_Detail(),));
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/15,
                    decoration: BoxDecoration(
                        color: Color(0xffb4466b2),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text(
                        "Holi festival",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            letterSpacing: 2),
                      ),
                      trailing: Text(
                        "Accept",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/15,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(
                      "Halloween",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          letterSpacing: 2),
                    ),
                    trailing: Text(
                      "Reject",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Add_Request(),));
            },
            child: Container(
              height: height/14,
              width: width/7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffb4466b2)
                ),
              child: Center(
                child: Icon(Icons.add,color: Colors.white,size: 35,),
              ),
            ),
          ),
        ),
      )
    ]));
  }
}
