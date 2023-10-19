import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../common/color_extension.dart';

class TipsDetailsView extends StatefulWidget {
  final Map tObj;

  const TipsDetailsView({super.key, required this.tObj});

  @override
  State<TipsDetailsView> createState() => _TipsDetailsViewState();
}

class _TipsDetailsViewState extends State<TipsDetailsView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    // Define a TextStyle for the red and yellow text
    TextStyle redTextStyle = const TextStyle(
      color: Colors.green, // Set the color to red
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );

    TextStyle yellowTextStyle = const TextStyle(
      color: Colors.black, // Set the color to yellow
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );

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
            "CP Fitness : Tips",
            style: TextStyle(
              color: TColor.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/1.png",
                width: media.width,
                height: media.width * 0.55,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.tObj["name"],
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "- What are the benefits of Going to Gym?",
                  style: yellowTextStyle, // Apply yellow text style
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Physical Benefits:-\n",
                    style: redTextStyle, // Apply red text style
                    children: [
                      TextSpan(
                        text: "1. Improved Cardiovascular Health\n"
                            "2. Weight Management\n"
                            "3. Muscle Strength and Endurance\n"
                            "4. Bone Health\n"
                            "5. Improved Flexibility\n"
                            "6. Enhanced Balance and Coordination\n"
                            "7. Better Posture\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Mental Benefits:-",
                  style: redTextStyle, // Apply red text style
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "1. Stress Reduction\n"
                  "2. Enhanced Cognitive Function\n"
                  "3. Improved Sleep\n"
                  "4. Boosted Self-Esteem\n"
                  "5. Social Interaction\n"
                  "6. Mental Resilience\n"
                  "7. Mood Regulation\n"
                  "8. Increased Energy Levels\n"
                  "9. Pain Management\n"
                  "10. Longevity",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "- How Many Times a Week?",
                  style: yellowTextStyle, // Apply yellow text style
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Cardiovascular Exercise:",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n- General Health: 150 minutes of moderate-intensity or 75 minutes of vigorous-intensity aerobic exercise, 5 days a week.\n"
                            "- Weight Loss: 300 minutes or more of moderate-intensity aerobic exercise per week.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Strength Training:",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n- Beginners: 2-3 days of full-body strength training, with at least 1 day of rest between sessions.\n"
                            "- Intermediate/Advanced: 3-5 days of strength training per week.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Flexibility and Mobility:",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n- Stretching and flexibility exercises can be done daily or as needed.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "High-Intensity Interval Training (HIIT):",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\n- 2-3 sessions of HIIT per week.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Rest and Recovery:",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\n- 1-2 rest days per week.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Variation:",
                    style: const TextStyle(
                      color: Colors.blue, // Set the color to blue
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n- Include a variety of exercises and activities to prevent overuse injuries and keep workouts interesting.\n",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
