import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
import 'package:cp_worlouts/common_widget/tip_row.dart';
import 'package:cp_worlouts/view/tips/tips_details_view.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class TipsView extends StatefulWidget {
  const TipsView({super.key});

  @override
  State<TipsView> createState() => _TipsViewState();
}

class _TipsViewState extends State<TipsView> {
  int activeIndex = 0;

  List tipsArr = [
    {"name": "About Training"},
    {"name": "How to Weight Loss?"},
    {"name": "Introducing about meal plan"},
    {"name": "Water and Food"},
    {"name": "How to Gain Muscles?"},
    {"name": "How many Liters of Water to Drink a Day?"},
    {"name": "How many times a day to eat?"},
    {"name": "Become Stronger."},
    {"name": "Shoes To Training"},
    {"name": "Appeal Tips"},
    {"name": "Vitamin Rich Fruits."},
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
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
            "Tips",
            style: TextStyle(
                color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemBuilder: (context, index) {
              var tObj = tipsArr[index] as Map? ?? {};
              return TipRow(
                  tObj: tObj,
                  onPressed: () {
                    setState(() {
                      activeIndex = index;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TipsDetailsView(
                          tObj: tObj,
                        ),
                      ),
                    );
                  },
                  isActive: index == activeIndex);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.black26,
                height: 1,
              );
            },
            itemCount: tipsArr.length),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
