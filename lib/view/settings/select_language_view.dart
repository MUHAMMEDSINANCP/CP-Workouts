import 'package:cp_worlouts/common_widget/language_row.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class SelectLanguageView extends StatefulWidget {
  final Function(Map) didSelect;

  const SelectLanguageView({super.key, required this.didSelect});

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  int selectIndex = 0;

  List languageArr = [
    {"name": "English"},
    {"name": "Hindi"},
    {"name": "Malayalam"},
    {"name": "Urdu"},
    {"name": "Kannada"},
    {"name": "Tamil"},
    {"name": "Bengali"},
    {"name": "Punjabi"},
    {"name": "Gujarati"},
    {"name": "Marati"},
  ];
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/img/black_white.png",
            width: 25,
            height: 25,
          ),
        ),
        title: Text(
          "Language",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            var tObj = languageArr[index] as Map? ?? {};
            return LanguageRow(
                tlbj: tObj,
                onPressed: () {
                  setState(() {
                    selectIndex = index;
                  });
                },
                isActive: selectIndex == index);
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: languageArr.length),
    );
  }
}
