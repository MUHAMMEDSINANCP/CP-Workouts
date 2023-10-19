import 'package:carousel_slider/carousel_slider.dart';
import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
 import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/border_button.dart';

class WeightView extends StatefulWidget {
  const WeightView({super.key});

  @override
  State<WeightView> createState() => _WeightViewState();
}

class _WeightViewState extends State<WeightView> {
  List myWeightArr = [
    {"name": "Sunday, AUG 19", "image": "assets/img/w_1.png"},
    {"name": "Sunday, AUG 26", "image": "assets/img/w_2.png"},
    {
      "name": "Sunday, AUG 26",
      "image": "assets/img/w_3.png",
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
            ),
          ),
          title: Text(
            "Check your process",
            style: TextStyle(
                color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: BorderButton(
                        title: "Check Process",
                        type: BorderButtonType.inactive,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderButton(
                        type: BorderButtonType.active,
                        title: "My Weight",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: ListTile(
                  leading: const Icon(Icons.arrow_forward),
                  title: Text(
                    "Add more photo to control your process",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: TColor.secondaryText, fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  width: media.width,
                  height: media.width * 0.9,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.65,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    ),
                    itemCount: myWeightArr.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int index) {
                      var dObj = myWeightArr[index] as Map? ?? {};
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: TColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            dObj["image"].toString(),
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/black_fo.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Sunday, AUG 26",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/next_go.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: TColor.gray.withOpacity(0.5),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "74 kg",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: ListTile(
                  leading: const Icon(Icons.arrow_forward),
                  title: Text(
                    """Infants and Children: In the early years of life, it's natural for body weight to increase as children grow. There are growth charts used by pediatricians to track a child's development.

Adolescents: During puberty, adolescents may experience growth spurts and changes in body composition. Healthy weight varies depending on factors like height and gender.

Young Adults: In early adulthood, individuals tend to reach their physical peak, and their body weight often stabilizes. Maintaining a healthy weight becomes important for long-term health.

Middle Age: As people enter middle age, metabolism may slow down, and muscle mass can decrease. Maintaining a balanced diet and regular exercise is important to prevent weight gain.

Older Adults: In later years, maintaining muscle mass and bone density is crucial. Weight loss or gain in the elderly can have different implications, and health should be closely monitored.

It's important to remember that there's no one-size-fits-all approach to body weight. What's considered a healthy weight depends on many individual factors, including genetics, lifestyle, and overall health.
""",
                    style: TextStyle(color: TColor.secondaryText, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
