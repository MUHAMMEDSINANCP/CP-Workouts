import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/select_datetime.dart';
import '../../common_widget/select_picker.dart';
import '../menu/menu_view.dart';

class Step3View extends StatefulWidget {
  const Step3View({super.key});

  @override
  State<Step3View> createState() => _Step3ViewState();
}

class _Step3ViewState extends State<Step3View> {
  bool monitoring = true;
  DateTime? selectDate;
  String? selectHeight;
  String? selectWeight;
  String? genderValue = "male";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: TColor.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/img/back.png",
                width: 25,
                height: 25,
              )),
          title: Text(
            "Step 3 of 3",
            style: TextStyle(
                color: TColor.primary,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Personal Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Let us know about you to speed up the result, Get fit with your personal workout plan!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 16),
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CP Health Monitoring",
                                style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Allow access to fill my parameters",
                                style: TextStyle(
                                    color: TColor.secondaryText, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        CupertinoSwitch(
                            activeColor: TColor.primary,
                            value: monitoring,
                            onChanged: (newVal) {
                              setState(() {
                                monitoring = !monitoring;
                              });
                            })
                      ],
                    ),
                    SizedBox(height: media.width * 0.05),
                    Divider(color: TColor.divider, height: 1),
                    SelectDateTime(
                      title: "Birthday",
                      didChange: (newDate) {
                        setState(() {
                          selectDate = newDate;
                        });
                      },
                      selectDate: selectDate,
                    ),
                    Divider(color: TColor.divider, height: 1),
                    SelectPicker(
                      allVal: const [
                        "120 cm",
                        "121 cm",
                        "122 cm",
                        "123 cm",
                        "124 cm",
                        "125 cm",
                        "126 cm",
                        "127 cm",
                        "128 cm",
                        "129 cm",
                        "130 cm",
                        "131 cm",
                        "132 cm",
                        "133 cm",
                        "134 cm",
                        "135 cm",
                        "136 cm",
                        "137 cm",
                        "138 cm",
                        "139 cm",
                        "140 cm",
                        "141 cm",
                        "142 cm",
                        "143 cm",
                        "144 cm",
                        "145 cm",
                        "146 cm",
                        "147 cm",
                        "148 cm",
                        "149 cm",
                        "150 cm",
                        "151 cm",
                        "152 cm",
                        "153 cm",
                        "154 cm",
                        "155 cm",
                        "156 cm",
                        "157 cm",
                        "158 cm",
                        "159 cm",
                        "160 cm",
                        "161 cm",
                        "162 cm",
                        "163 cm",
                        "164 cm",
                        "165 cm",
                        "166 cm",
                        "167 cm",
                        "168 cm",
                        "169 cm",
                        "170 cm",
                        "171 cm",
                        "172 cm",
                        "173 cm",
                        "174 cm",
                        "175 cm",
                        "176 cm",
                        "177 cm",
                        "178 cm",
                        "179 cm",
                        "180 cm",
                        "181 cm",
                        "182 cm",
                        "183 cm",
                        "184 cm",
                        "185 cm",
                        "186 cm",
                        "187 cm",
                        "188 cm",
                        "189 cm",
                        "190 cm",
                        "191 cm",
                        "192 cm",
                        "193 cm",
                        "194 cm",
                        "195 cm",
                        "196 cm",
                        "197 cm",
                        "198 cm",
                        "199 cm",
                        "200 cm"
                      ],
                      selectVal: selectHeight,
                      title: "Height",
                      didChange: (newVal) {
                        setState(() {
                          selectHeight = newVal;
                        });
                      },
                    ),
                    Divider(color: TColor.divider, height: 1),
                    SelectPicker(
                      allVal: const [
                        "30 kg",
                        "31 kg",
                        "32 kg",
                        "33 kg",
                        "34 kg",
                        "35 kg",
                        "36 kg",
                        "37 kg",
                        "38 kg",
                        "39 kg",
                        "40 kg",
                        "41 kg",
                        "42 kg",
                        "43 kg",
                        "44 kg",
                        "45 kg",
                        "46 kg",
                        "47 kg",
                        "48 kg",
                        "49 kg",
                        "50 kg",
                        "51 kg",
                        "52 kg",
                        "53 kg",
                        "54 kg",
                        "55 kg",
                        "56 kg",
                        "57 kg",
                        "58 kg",
                        "59 kg",
                        "60 kg",
                        "61 kg",
                        "62 kg",
                        "63 kg",
                        "64 kg",
                        "65 kg",
                        "66 kg",
                        "67 kg",
                        "68 kg",
                        "69 kg",
                        "70 kg",
                        "71 kg",
                        "72 kg",
                        "73 kg",
                        "74 kg",
                        "75 kg",
                        "76 kg",
                        "77 kg",
                        "78 kg",
                        "79 kg",
                        "80 kg",
                        "81 kg",
                        "82 kg",
                        "83 kg",
                        "84 kg",
                        "85 kg",
                        "86 kg",
                        "87 kg",
                        "88 kg",
                        "89 kg",
                        "90 kg",
                        "91 kg",
                        "92 kg",
                        "93 kg",
                        "94 kg",
                        "95 kg",
                        "96 kg",
                        "97 kg",
                        "98 kg",
                        "99 kg",
                        "100 kg",
                        "101 kg",
                        "102 kg",
                        "103 kg",
                        "104 kg",
                        "105 kg",
                        "106 kg",
                        "107 kg",
                        "108 kg",
                        "109 kg",
                        "110 kg",
                        "111 kg",
                        "112 kg",
                        "113 kg",
                        "114 kg",
                        "115 kg",
                        "116 kg",
                        "117 kg",
                        "118 kg",
                        "119 kg",
                        "120 kg",
                        "121 kg",
                        "122 kg",
                        "123 kg",
                        "124 kg",
                        "125 kg",
                        "126 kg",
                        "127 kg",
                        "128 kg",
                        "129 kg",
                        "130 kg"
                      ],
                      selectVal: selectWeight,
                      title: "Weight",
                      didChange: (newVal) {
                        setState(() {
                          selectWeight = newVal;
                        });
                      },
                    ),
                    Divider(color: TColor.divider, height: 1),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: media.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          CupertinoSegmentedControl(
                            groupValue: genderValue,
                            selectedColor: TColor.primary,
                            unselectedColor: TColor.white,
                            borderColor: TColor.primary,
                            children: const {
                              "male": Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Male",
                                    style: TextStyle(fontSize: 18)),
                              ),

                              "female": Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Female",
                                    style: TextStyle(fontSize: 18)),
                              ),
                              // "transgender":
                              //     Text("Transgender", style: TextStyle(fontSize: 18)),
                            },
                            onValueChanged: (value) {
                              setState(() {
                                genderValue = value;
                              });
                            },
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: RoundButton(
                  title: "Start",
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuView()),
                        (route) => false);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].map((pObj) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: 3 == pObj
                            ? TColor.primary
                            : TColor.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}
