import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constants.dart';

class HomeView extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        decoration: PageDecoration(
          bodyAlignment: Alignment.center, imageFlex: 3, //moves image in screen
        ),
        image: Image.asset('assets/chef.jpg'),
        //    title: 'Welcome ',
        bodyWidget: Text(
          Constants.kLabelText,
          style: Constants.kLabelTextStyle,
        ),
        titleWidget: Text(
          Constants.kLabelWelcome,
          style: Constants.kLabelTextStyle,
        ),
      ),
      // PageViewModel(
      //   decoration: PageDecoration(
      //     bodyAlignment: Alignment.center, imageFlex: 3, //moves image in screen
      //   ),
      //   image: Image.asset('assets/chicken_biryani.jpg'),
      //   title: 'This is your ticket to the kitchen',
      //   body: '',
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: getPages(),
          done: Text(
            Constants.kLabelDive,
            style: Constants.kBtnTextStyle,
          ),
          showDoneButton: true,
          showNextButton: false,
          onDone: () {},
          dotsDecorator: DotsDecorator(
            activeColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

// TweenAnimationBuilder(
// tween: Tween<double>(begin: 0, end: 2 * 3.14),
// duration: Duration(seconds: 2),
// builder: (__, double angle, _) {
// return Transform.rotate(angle: angle);
// },
// )
