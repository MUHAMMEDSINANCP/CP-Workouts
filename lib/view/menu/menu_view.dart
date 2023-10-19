import 'dart:ui';
import 'package:cp_worlouts/view/exercise/exercise_view.dart';
import 'package:cp_worlouts/view/login/on_boarding_view.dart';
import 'package:cp_worlouts/view/meal_plan/meal_plan_view.dart';
import 'package:cp_worlouts/view/menu/fitness_view.dart';
import 'package:cp_worlouts/view/menu/support_view.dart';
import 'package:cp_worlouts/view/menu/daily_tips_view.dart';
import 'package:cp_worlouts/view/menu/yoga_view.dart';
import 'package:cp_worlouts/view/settings/settings_view.dart';
import 'package:cp_worlouts/view/tips/tips_view.dart';
import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import '../../common_widget/menu_cell.dart';
import '../../common_widget/plan_row.dart';
import '../exercise/exercise_view_2.dart';
import '../home/home_view.dart';
import '../running/running_view.dart';
import '../schedule/schedule_view.dart';
import '../weight/weight_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List planArr = [
    {
      "name": "Running",
      "icon": "assets/img/menu_running.png",
      "right_icon": "",
    },
    {
      "name": "Yoga",
      "icon": "assets/img/yoga.png",
      "right_icon": "assets/img/information.png",
    },
    {
      "name": "Workout",
      "icon": "assets/img/workout.png",
      "right_icon": "",
    },
    {
      "name": "Previous Workout",
      "icon": "assets/img/walking.png",
      "right_icon": "",
    },
    {
      "name": "Fitness",
      "icon": "assets/img/fitness.png",
      "right_icon": "assets/img/information.png",
    },
    {
      "name": "Strength",
      "icon": "assets/img/strength.png",
      "right_icon": "",
    }
  ];

  List menuArr = [
    {"name": "Home", "image": "assets/img/menu_home.png", "tag": "1"},
    {"name": "Weight", "image": "assets/img/menu_weight.png", "tag": "2"},
    {
      "name": "Fitness Status",
      "image": "assets/img/menu_traning_plan.png",
      "tag": "3"
    },
    {"name": "Meal Plan", "image": "assets/img/menu_meal_plan.png", "tag": "4"},
    {"name": "Schedule", "image": "assets/img/menu_schedule.png", "tag": "5"},
    {"name": "Running", "image": "assets/img/menu_running.png", "tag": "6"},
    {"name": "Tips", "image": "assets/img/menu_tips.png", "tag": "7"},
    {"name": "Exercises", "image": "assets/img/menu_exercises.png", "tag": "8"},
    {"name": "Daily Tips", "image": "assets/img/fitness.png", "tag": "9"},
    {"name": "Support", "image": "assets/img/menu_support.png", "tag": "10"},
    {
      "name": "Statistics",
      "image": "assets/img/menu_traning_status.png",
      "tag": "11"
    },
    {"name": "Settings", "image": "assets/img/menu_settings.png", "tag": "12"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
          width: media.width,
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5,
            ),
            child: Stack(
              children: [
                Container(
                  width: media.width * 0.78,
                  decoration: BoxDecoration(color: TColor.white),
                  child: SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22.5),
                                child: Image.asset("assets/img/u1.png",
                                    width: 45, height: 45, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "My Fitness Status",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: TColor.secondaryText,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        Expanded(
                            child: ListView.builder(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                itemCount: planArr.length,
                                itemBuilder: (context, index) {
                                  var itemObj = planArr[index] as Map? ?? {};

                                  return PlanRow(
                                    mObj: itemObj,
                                    onPressed: () {
                                      // Navigator.pop(context);
                                      if (index == 0) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RunningView()));
                                      }
                                      if (index == 1) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const YogaView()));
                                      }

                                      if (index == 2) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ExerciseView()));
                                      }

                                      if (index == 3) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ScheduleView()));
                                      }
                                      if (index == 4) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const FitnessView()));
                                      }
                                      if (index == 5) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ExerciseView2()));
                                      }
                                    },
                                  );
                                })),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: kTextTabBarHeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const OnBoardingView()));
                                },
                                child: const Text(
                                  "Clear All Data",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const Icon(
                                Icons.delete_forever,
                                color: Colors.red,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight - 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "assets/img/meun_close.png",
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: media.width * 0.6,
              collapsedHeight: kToolbarHeight + 20,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              flexibleSpace: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    "assets/img/3.png",
                    width: media.width,
                    height: media.width * 0.8,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: media.width,
                    height: media.width * 0.8,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 30),
                    child: Row(
                      children: [
                        // Container(
                        //   width: 54,
                        //   height: 54,
                        //   decoration: BoxDecoration(
                        //       color: TColor.white,
                        //       borderRadius: BorderRadius.circular(27)),
                        //   alignment: Alignment.center,
                        //   child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(25),
                        //       child: Image.asset(
                        //         "assets/img/u1.png",
                        //         width: 50,
                        //         height: 50,
                        //         fit: BoxFit.cover,
                        //       )),
                        // ),
                        const SizedBox(
                          width: 15,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Welcome to CP Fitness",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: TColor.white,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 4,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: Text("⚙️ Sweat, Smile, and Repeat!",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: TColor.gray,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1),
          itemCount: menuArr.length,
          itemBuilder: ((context, index) {
            var mObj = menuArr[index] as Map? ?? {};
            return MenuCell(
              mObj: mObj,
              onPressed: () {
                switch (mObj["tag"].toString()) {
                  case "1":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                    break;
                  case "2":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WeightView()));
                    break;
                  case "3":
                    Scaffold.of(context).openDrawer();
                    break;
                  case "4":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MealPlanView()));
                    break;
                  case "5":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScheduleView()));
                    break;
                  case "6":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RunningView()));
                    break;
                  case "7":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TipsView()));
                    break;
                  case "8":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExerciseView2()));
                    break;
                  case "9":
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DailyTips()));
                    break;
                  case "10":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SupportView()));
                    break;
                  // case "11":
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const SettingsView()));
                  //   break;
                  case "12":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsView()));
                    break;
                  default:
                }
              },
            );
          }),
        ),
      ),
    );
  }
}
