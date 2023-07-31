import 'package:daily_exercises/category_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Exercises',
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
        color: Colors.transparent,
        child: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          selectedFontSize: 30,
          items: const [BottomNavigationBarItem(icon: Icon(Icons.calendar_today,size: 25,color: Colors.red,), label: "Today",),
            BottomNavigationBarItem(icon: Icon(Icons.toggle_off,size: 25,color: Colors.red,), label: "Exercises"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 25,color: Colors.red,), label: "Settings"),

          ],
        ),
      ),
      body: Stack(children: [
        Container(
          height: size.height * .45,
          decoration: const BoxDecoration(
              color: Color(
                0xFFF5CeB8,
              ),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"))),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                alignment: Alignment.center,
                height: 52,
                width: 52,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2BEA1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.menu,
                  size: 25,
                  color: kBackgroundColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "Good Morning \nUsers",
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search Here',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: .85,
              children: [
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe01.png",
                ),
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe02.png",
                ),
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe01.png",
                ),
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe02.png",
                ),
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe01.png",
                ),
                CategoyPage(
                  title: "Diet \n Recommendation",
                  img: "assets/images/exe02.png",
                ),
              ],
            )),
          ]),
        ))
      ]),
    );
  }
}
