import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';

import 'home/home_screen.dart';

class TestScreen extends StatelessWidget {
  /*here we have a list of OnbordingScreen which we want to have, each OnbordingScreen have a imagePath,title and an desc.
      */
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/screen.jpg",
      title: "Search",
      desc:"Discover weather by location",
    ),
    OnbordingData(
      imagePath: "assets/images/badweather.jpg",
      title: "weather",
      desc:"Everything About The Weather",
    ),
    OnbordingData(
      imagePath: "assets/images/anime-rain.jpg",
      title: "Weather_app",
      desc:"The Weather app",

    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return new IntroScreen(list,MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}