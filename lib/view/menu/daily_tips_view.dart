import 'package:cp_worlouts/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyTips extends StatelessWidget {
  final List<String> tips = [
    "Stay hydrated. Drink plenty of water throughout the day to keep your body well-hydrated.",
    "Set realistic fitness goals and track your progress to stay motivated.",
    "Incorporate a mix of cardio, strength training, and flexibility exercises into your routine.",
    "Get enough rest. Ensure you have an adequate amount of sleep for muscle recovery and overall health.",
    "Maintain a balanced diet with plenty of fruits, vegetables, lean protein, and whole grains.",
    "Warm up before exercising to prevent injury and improve performance.",
    "Don't skip breakfast. It's an important meal that provides energy for the day.",
    "Use proper form and technique when lifting weights to avoid injury.",
    "Vary your workouts to prevent boredom and plateaus in progress.",
    "Listen to your body. Rest when you're fatigued, and don't overexert yourself.",
    "Find a workout buddy to keep you motivated and accountable.",
    "Incorporate stretching into your routine to improve flexibility.",
    "Avoid excessive sugar and processed foods in your diet.",
    "Try different types of fitness classes to find what you enjoy the most.",
    "Include balance and stability exercises in your workouts to improve coordination.",
    "Monitor your heart rate during workouts to ensure you're in the right training zone.",
    "Consider hiring a personal trainer to create a customized workout plan.",
    "Use proper footwear to support your feet and reduce the risk of injury.",
    "Engage in both aerobic and anaerobic exercises for a well-rounded fitness routine.",
    "Plan your workouts in advance and make them a part of your schedule.",
    "Perform core exercises to strengthen your abdominal and back muscles.",
    "Reduce stress through relaxation techniques like yoga or meditation.",
    "Incorporate functional exercises that mimic daily movements.",
    "Stay consistent with your fitness routine for long-term results.",
    "Recover with a post-workout meal that includes protein and carbohydrates.",
    "Include outdoor activities like hiking and biking in your fitness regimen.",
    "Pay attention to your posture to prevent discomfort and injuries.",
    "Stay patient; fitness results take time and effort.",
    "Stay positive and motivated throughout your fitness journey.",
  ];

  DailyTips({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM dd, yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 26,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Fitness Tips',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        backgroundColor: TColor.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Daily Fitness Tips',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                // Create a Row to display the calendar icon and date text
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: TColor.primary,
                  ),
                  const SizedBox(
                      width: 8), // Add some spacing between the icon and text
                  Text(
                    'Date: $formattedDate',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors
                          .black, // Change the text color to your preference
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              for (var i = 0; i < tips.length; i++)
                Card(
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: SizedBox(
                        width: 20,
                        child: Icon(
                          Icons.fiber_manual_record,
                          color: TColor.primary,
                          size: 16.0,
                        ),
                      ),
                      title: RichText(
                        text: TextSpan(
                          text: 'Tip ${i + 1}: ',
                          style: TextStyle(
                            fontSize: 16,
                            color: TColor.primary,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: tips[i],
                              style: TextStyle(
                                fontSize: 16,
                                color: TColor.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
