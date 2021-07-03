import 'package:flutter/material.dart';
import 'package:receipes_app/views/onBoarding_view.dart';

void main() {
  runApp(ReceipeApp());
}

class ReceipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingView.id,
      routes: {
        OnBoardingView.id: (context) => OnBoardingView(),
        // HomeView.id: (context) => HomeView(
        //         //       categories: [],
        //         //     )
      },
    );
  }
}
