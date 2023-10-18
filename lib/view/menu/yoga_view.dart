import 'package:cp_worlouts/common_widget/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/color_extension.dart';

class YogaView extends StatefulWidget {
  const YogaView({super.key});

  @override
  State<YogaView> createState() => _YogaViewState();
}

class _YogaViewState extends State<YogaView> {
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
            "Yoga",
            style: TextStyle(
                color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
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
                  "Benefits of doing Yoga.",
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
                  """ Yoga is a holistic and ancient practice that originated in India. It encompasses a wide range of physical, mental, and spiritual disciplines aimed at promoting overall well-being and self-awareness. Here's a description of yoga:

Physical Postures (Asanas): Yoga includes a series of physical postures and movements designed to increase flexibility, strength, and balance. These asanas are often named after animals, objects, or natural phenomena and are performed with proper alignment and mindful breathing.

Breath Control (Pranayama): Integral to yoga is the practice of controlled breathing. Pranayama techniques involve regulating the breath to enhance the flow of life force energy (prana) in the body. This breath control helps calm the mind and reduce stress.

Meditation (Dhyana): Meditation is a fundamental aspect of yoga. It involves focusing the mind on a particular object, thought, or breath to achieve mental clarity, inner peace, and self-awareness. Meditation is a powerful tool for reducing anxiety and enhancing concentration.

Ethical Principles (Yamas and Niyamas): Yoga encompasses a set of ethical guidelines called yamas (restraints) and niyamas (observances). These principles include concepts like non-violence (ahimsa), truthfulness (satya), contentment (santosha), and self-discipline (tapas). They serve as a moral compass for practitioners.

Philosophy (Yogic Philosophy): Yoga is grounded in a philosophical framework that explores the nature of the self, the interconnectedness of all living beings, and the pursuit of ultimate liberation or self-realization. Various classical texts, such as the Yoga Sutras of Patanjali, delve into these philosophical aspects.

Chakras and Energy Centers: Some forms of yoga incorporate the concept of chakras, which are energy centers in the body. Balancing and activating these chakras is believed to contribute to physical and emotional well-being.

Holistic Health: Yoga is seen as a means to achieve holistic health, encompassing the physical, mental, and spiritual dimensions of well-being. It promotes harmony between the mind and body.

Adaptability: Yoga is highly adaptable and can be practiced by people of all ages and fitness levels. There are various styles of yoga, from gentle and restorative to more vigorous and physically demanding, allowing individuals to choose what suits their needs and goals.

Cultural and Spiritual Significance: While yoga has spiritual roots in Indian traditions, it can be practiced by people of all backgrounds and belief systems. It doesn't require adherence to any specific religion.

In summary, yoga is a comprehensive practice that combines physical postures, breath control, meditation, ethical principles, and philosophical insights to promote physical and mental health, inner peace, and self-realization. It offers a path to personal growth and well-being that can be tailored to individual preferences and needs.""",
                  style: TextStyle(color: TColor.secondaryText, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CommonBottomAppBar());
  }
}
