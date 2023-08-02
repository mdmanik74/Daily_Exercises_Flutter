// ignore_for_file: non_constant_identifier_names

import 'package:daily_exercises/on_boarding/on_boarding_page.dart';
import 'package:flutter/material.dart';

import '../color_page.dart';

class OnboardCommon extends StatefulWidget {
  const OnboardCommon({super.key});

  @override
  State<OnboardCommon> createState() => _OnboardCommonState();
}

class _OnboardCommonState extends State<OnboardCommon> {
  final int _currentIndex = 0;
  final PageController _pageController = PageController();

  List pageList = [

    {
      "title": "Track Your Goal",
      "subtitle":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/img/on_1.png",
    },
    {
      "title": "Fitness and Exercise",
      "subtitle": "Health Benefits, How to Get Started, and How to Get Better",
      "image": "assets/img/on_2.png",
    },
    {
      "title": "Having a high level of overall",
      "subtitle":
          "Having a high level of overall fitness is linked with a lower risk of chronic disease,",
      "image": "assets/img/on_3.png",
    },
    {
      "title": "Simply put",
      "subtitle":
          "Our bodies are meant to move, and they tend to function better when we’re more fit.",
      "image": "assets/img/on_4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: 3,
              itemBuilder: (BuildContext context, int _currentIndex) {
                var OnBoardObj =pageList[_currentIndex] as Map? ?? {};
                return OnboardView(OnBoardObj: OnBoardObj);

              })
        ],
      ),
    );
  }
}
