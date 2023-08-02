import 'package:daily_exercises/color_page.dart';
import 'package:flutter/material.dart';

import 'common/onboarding_common.dart';
import 'on_boarding/on_boarding_page.dart';
void main (){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness 3 in 1',
      theme: ThemeData(primaryColor: TColor.primaryColor1,fontFamily: 'Poppins'),
      home: const OnboardCommon(),
    );
  }
}