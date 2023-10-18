import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/color_extension.dart';

class FitnessView extends StatefulWidget {
  const FitnessView({super.key});

  @override
  State<FitnessView> createState() => _FitnessViewState();
}

class _FitnessViewState extends State<FitnessView> {
  List workArr = [
    {"name": "Running", "image": "assets/img/1.png"},
    {"name": "Jumping", "image": "assets/img/2.png"},
    {
      "name": "Running",
      "image": "assets/img/5.png",
    },
    {
      "name": "Jumping",
      "image": "assets/img/3.png",
    },
  ];

  List responseArr = [
    {
      "name": "Mikhail Eduardovich",
      "time": "09 days ago",
      "image": "assets/img/u2.png",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "11 days ago",
      "image": "assets/img/u1.png",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "12 days ago",
      "image": "assets/img/u2.png",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    },
    {
      "name": "Mikhail Eduardovich",
      "time": "13 days ago",
      "image": "assets/img/u1.png",
      "message": "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit,"
    }
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
              )),
          title: Text(
            "Fitness",
            style: TextStyle(
                color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/2.png",
                width: media.width,
                height: media.width * 0.55,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IgnorePointer(
                      ignoring: true,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: TColor.primary,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/like.png",
                          width: 20,
                          height: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/share.png",
                          width: 20,
                          height: 20,
                        ))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  "Benefits of Doing Exercises.",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  """Exercising regularly offers a wide range of physical, mental, and emotional benefits. Given your goal of becoming a pro in building Flutter mobile applications, maintaining a healthy lifestyle through exercise can help you stay energized and focused. Here are some key benefits of doing exercises:

Improved Physical Health:

Increased fitness and endurance.
Enhanced cardiovascular health, reducing the risk of heart disease.
Stronger muscles and bones, reducing the risk of osteoporosis and injuries.
Weight management and body composition improvement.
Mental Well-being:

Reduced stress and anxiety.
Enhanced mood and reduced symptoms of depression.
Increased production of endorphins, the body's natural mood lifters.
Better Cognitive Function:

Improved memory and cognitive function.
Increased creativity and problem-solving abilities.
Increased Energy Levels:

More energy for daily tasks and work, helping you stay productive in your development projects.
Quality Sleep:

Improved sleep patterns, leading to better rest and recovery.
Strengthened Immune System:

Reduced risk of illness and improved immunity.
Enhanced Focus and Concentration:

Improved ability to concentrate and sustain attention, which is beneficial for your work as a Flutter developer.
Social Interaction:

Opportunities for social interaction when exercising with others, which can help build a support network.
Self-confidence and Body Image:

Enhanced self-esteem and body image as you achieve fitness goals.
Long-term Health Benefits:

Reduced risk of chronic diseases such as diabetes, certain cancers, and hypertension.
Stress Management:

Exercise provides a healthy outlet for managing stress and frustration.
Better Posture and Flexibility:

Improved posture and flexibility, which can prevent back pain and musculoskeletal issues.
Enhanced Longevity:

Regular exercise is associated with a longer and healthier life.
Weight Control:

Helps maintain a healthy body weight and aids in weight loss when combined with a balanced diet.
Increased Productivity:

Regular exercise can improve your work efficiency and creativity.
To fully realize these benefits, it's essential to find an exercise routine that you enjoy and can sustain over the long term. This will help you stay motivated and make physical activity a consistent part of your lifestyle, which can greatly contribute to your professional success and personal well-being.""",
                  style: TextStyle(color: TColor.secondaryText, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
