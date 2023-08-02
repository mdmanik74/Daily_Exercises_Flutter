// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

import '../color_page.dart';

class OnboardView extends StatelessWidget {
  final Map OnBoardObj;
  OnboardView({super.key, required this.OnBoardObj});



  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        children: [
          PageView.builder(itemBuilder: (context, index) {
            return SizedBox(
              width: media.width,
              height: media.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    OnBoardObj["image"].toString(),
                    width: media.width,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      OnBoardObj["title"].toString(),
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: TColor.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      OnBoardObj["subtitle"].toString(),
                      style: TextStyle(
                          fontSize: 14,

                          color: TColor.gray),
                    ),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
