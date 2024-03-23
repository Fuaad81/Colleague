// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, use_full_hex_values_for_flutter_colors

import 'package:events/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    navigator();
  }
  navigator() async{
    await Future.delayed(Duration(seconds: 5), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start_Page(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb4466b2),
      body: Center(
        child: Text("ColleagueApp",style: GoogleFonts.crimsonPro(
          textStyle:TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
          )
        ),),
      ),
    );
  }
  
  
}