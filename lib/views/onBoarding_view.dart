import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:receipes_app/modals/category.dart';
import 'package:receipes_app/services/networkAdapter.dart';

import '../constants.dart';
import 'home_view.dart';

class OnBoardingView extends StatelessWidget {
  static const String id = 'onBoarding';
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
          onDone: () async {
            NetworkAdapter networkAdapter = NetworkAdapter();
            List<Category> categories = await networkAdapter.getCategories();
            //Navigator.popAndPushNamed(context, HomeView.id);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return HomeView(categories: categories);
              }),
            );
          },
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
