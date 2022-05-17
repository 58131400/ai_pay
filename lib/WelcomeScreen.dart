import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
        Padding(
        padding: const EdgeInsets.fromLTRB(118, 191, 118, 529),
        child: Image.asset('asset/AI_Pay_logo.png'),
      ),
      Center(
        child: Text(
          "Welcome",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      Text("Enjoy a payless society with",
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w400,
          fontSize: 36,)
        ],
      ),
    ),);
  }
}
