// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:daily_exercises/on_boarding/on_boarding_page.dart';
import 'package:flutter/material.dart';

import '../color_page.dart';

class OnboardCommon extends StatefulWidget {
  const OnboardCommon({super.key});

  @override
  State<OnboardCommon> createState() => _OnboardCommonState();
}

class _OnboardCommonState extends State<OnboardCommon> {
   int _currentIndex = 0;
  final PageController controller = PageController();
List  pageList=[
  const OnboardView(
    title: "Track Your Goal",
    subtitle:
    "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
    image: "assets/img/on_1.png",
  ),
  const OnboardView(
    title: "Fitness and Exercise",
    subtitle:
    "Health Benefits, How to Get Started, and How to Get Better",
    image: "assets/img/on_2.png",
  ),
  const OnboardView(
    title: "Having a high level of overall",
    subtitle:
    "Having a high level of overall fitness is linked with a lower risk of chronic disease",
    image: "assets/img/on_3.png",
  ),
  const OnboardView(
    title: "Simply put",
    subtitle:
    "Our bodies are meant to move, and they tend to function better when we’re more fit.",
    image: "assets/img/on_4.png",
  ),


];

_onChanges(int index){
  setState(() {
    _currentIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    Size media;
    media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: pageList.length,
              onPageChanged: _onChanges,
              itemBuilder: (BuildContext context, int index) {
                return pageList[index];
              }),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: TColor.primaryColor1,
                borderRadius: BorderRadius.circular(35)),
            child: IconButton(
              icon: Icon(
                Icons.navigate_next,
                color: TColor.white,
              ),
              onPressed: () {
                if(pageList.length <=_currentIndex){

                }else{
                  _currentIndex=_currentIndex+1;
                  controller.jumpToPage(_currentIndex);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
