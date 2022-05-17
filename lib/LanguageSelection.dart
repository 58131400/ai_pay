import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

enum Menu { language1, language2, language3 }

class _LanguageSelectionState extends State<LanguageSelection> {
  var _selectedlanguage = "English"; // english
  bool _isChecked = false;

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
                  padding: const EdgeInsets.fromLTRB(127, 119, 133, 0),
                  child: PopupMenuButton(
                    onSelected: (Menu item) {
                      setState(() {
                        if (item.name == Menu.language1)
                          _selectedlanguage = "English";
                        else if (item.name == Menu.language2)
                          _selectedlanguage = "日本語";
                        else
                          _selectedlanguage = "中文（繁體）";
                      });
                    },
                    itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<Menu>>[
                      const PopupMenuItem(
                        child: Text("Choose your language"),
                        enabled: false,
                      ),
                      const PopupMenuItem(
                        child: Text("English"),
                        value: Menu.language1,
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
