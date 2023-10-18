import 'package:cp_worlouts/common/color_extension.dart';
import 'package:flutter/material.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: true,
        title: const Text(
          "About Us",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About CP Tech-Innovations',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'CP Tech-Innovations is an innovative tech company based in Kerala, India. We are dedicated to creating cutting-edge solutions for the digital world and providing exceptional services to our clients.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Our Services',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              '• Mobile App Development for Android and iOS',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              '• Web Development',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '• Software Development',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '• UI/UX Design',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'CP Tech-Innovations was founded by Muhammed Sinan CP, a visionary tech enthusiast with a passion for creating exceptional applications. Our team of dedicated professionals brings expertise, creativity, and dedication to every project.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Developer Contact Details:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Email: cpmuhammedsinan@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
