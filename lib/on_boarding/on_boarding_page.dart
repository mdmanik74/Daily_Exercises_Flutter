import 'package:flutter/material.dart';

import '../color_page.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  PageController controller = PageController();

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
                children: [Image.asset("assets/img/on_1.png",width: media.width,fit: BoxFit.fitWidth,)],
              ),
            );
          })
        ],
      ),
    );
  }
}
