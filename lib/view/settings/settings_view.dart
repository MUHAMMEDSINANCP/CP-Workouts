import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
import 'package:cp_worlouts/common_widget/setting_select_row.dart';
import 'package:cp_worlouts/common_widget/setting_switch_row.dart';
import 'package:cp_worlouts/view/settings/connect_view.dart';
import 'package:cp_worlouts/view/settings/select_language_view.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  int activeIndex = 0;

  List settingArr = [
    {"name": "Reminders", "type": "switch", "value": "false",},
    {"name": "Language", "type": "select", "value": "ENGLISH"},
    {"name": "Connected", "type": "select", "value": "FaceBook"},
    {"name": "CP Health", "type": "switch", "value": "true"},
    {"name": "Warm-Up", "type": "switch", "value": "false"},
    {"name": "Cool-Down", "type": "switch", "value": "false"},
    {"name": "Auto Push", "type": "switch", "value": "false"},
    {"name": "Pause for Running", "type": "switch", "value": "false"},
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
            "Settings",
            style: TextStyle(
                color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemBuilder: (context, index) {
              var tObj = settingArr[index] as Map? ?? {};

              if (tObj["type"] == "switch") {
                return SettingSwitchRow(
                  tObj: tObj,
                  onChanged: (newVal) {
                    settingArr[index]["value"] = newVal ? "true" : "false";
                    setState(() {});
                  },
                );
              } else if (tObj["type"] == "select") {
                return SettingSelectRow(
                  tObj: tObj,
                  onPressed: () {
                    if (tObj["name"] == "Language") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectLanguageView(
                                    didSelect: (newVal) {},
                                  )));
                    }else{
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConnectView(
                                    didSelect: (newVal) {},
                                  )));
                    }
                  },
                );
              } else {
                return Container();
              }

          
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.black26,
                height: 1,
              );
            },
            itemCount: settingArr.length),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
