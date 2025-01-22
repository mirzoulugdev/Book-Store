import 'dart:developer';

import 'package:books_app/presentation/screens/books_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageViewController = PageController();

  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _currentIndex == 2
              ? Container()
              : GestureDetector(
                  onTap: () {
                    pageViewController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                    );
                  },
                  child: Text("Skip"),
                ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                  log(value.toString());
                });
              },
              controller: pageViewController,
              children: [
                OnboardingWidget1(),
                OnboardingWidget2(),
                OnboardingWidget3(),
              ],
            ),
          ),
          if (_currentIndex != 2)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SmoothPageIndicator(
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.amber,
                ),
                controller: pageViewController,
                count: 3, // Number of pages
              ),
            ),
        ],
      ),
    );
  }
}

class OnboardingWidget3 extends StatelessWidget {
  const OnboardingWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/book1.png",
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Text(
          "Book Has Power To Change Everything",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 320,
          child: Text(
            textAlign: TextAlign.center,
            "We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.",
            style: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
        ),
        SizedBox(
          height: 150,
        ),
        ElevatedButton(
          onPressed: () async {
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            await _prefs.setBool("isFirstTimer", false);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BooksScreen(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          child: Text(
            "Get Started Now",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class OnboardingWidget1 extends StatelessWidget {
  const OnboardingWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard_1.png",
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        SizedBox(height: 20),
        Text(
          "Only Books Can Help You",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 350,
          child: Text(
            textAlign: TextAlign.center,
            "Books can help you to increase your knowledge and become more successfully.",
          ),
        ),
      ],
    );
  }
}

class OnboardingWidget2 extends StatelessWidget {
  const OnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard_2.png",
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        Text(
          "Learn Smartly",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 300,
          child: Text(
            textAlign: TextAlign.center,
            "It’s 2022 and it’s time to learn every quickly and smartly. ",
          ),
        ),
      ],
    );
  }
}
