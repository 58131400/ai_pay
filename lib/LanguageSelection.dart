import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

//enum Menu { language1, language2, language3 }

class _LanguageSelectionState extends State<LanguageSelection> {
  var _selectedlanguage = "English"; // english
  bool _isChecked = false;
  List<String> lanArray = ["English", "日本語", "中文（繁體）"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopupMenuButton(
                    onSelected: (item) {
                      setState(() {
                        _selectedlanguage = item;
                      });
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem(
                        child: Text("Choose your language"),
                        enabled: false,
                      ),
                      const PopupMenuItem(
                        child: Text("English"),
                        value: lanArray.elementAt(0),
                      ),
                      const PopupMenuItem(
                          child: Text("日本語"), value: Menu.language2),
                      const PopupMenuItem(
                          child: Text("中文（繁體）"), value: Menu.language3),
                    ],
                    child: Row(
                      children: [
                        Text(_selectedlanguage),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    initialValue: Menu.language1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(118, 42, 118, 531),
                  child: Image.asset(
                    'asset/AI_Pay_logo.png',
                    width: 178,
                    height: 176,
                  ),
                )
              ]),
        ]),
      ),
    );
  }
}
