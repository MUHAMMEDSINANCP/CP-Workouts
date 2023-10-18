import 'package:cp_worlouts/view/meal_plan/meal_plan_view.dart';
import 'package:cp_worlouts/view/running/running_view.dart';
import 'package:cp_worlouts/view/weight/weight_view.dart';
import 'package:flutter/material.dart';

import '../view/home/home_view.dart';

class CommonBottomAppBar extends StatelessWidget {
  const CommonBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RunningView()));
              },
              child: Image.asset(
                "assets/img/menu_running.png",
                width: 25,
                height: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MealPlanView()));
              },
              child: Image.asset(
                "assets/img/menu_meal_plan.png",
                width: 25,
                height: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              child: Image.asset(
                "assets/img/menu_home.png",
                width: 25,
                height: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WeightView()));
              },
              child: Image.asset(
                "assets/img/menu_weight.png",
                width: 25,
                height: 25,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/img/more.png",
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
