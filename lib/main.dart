import 'package:flutter/material.dart';
import 'package:receipes_app/views/home_view.dart';

void main() {
  runApp(ReceipeApp());
}

class ReceipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
