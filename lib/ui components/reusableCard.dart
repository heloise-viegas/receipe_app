import 'package:flutter/material.dart';
import 'package:receipes_app/constants.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  final String? itemName;
  final String? itemImg;
  final bool isMeal;
  final VoidCallback onTapped; //VoidCallback means void Function()
  ReusableCard(
      {required this.itemName,
      required this.itemImg,
      required this.onTapped,
      required this.isMeal});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: isMeal == true ? getMealItem() : getCategoryItem(),
    );
  }

  Widget getCategoryItem() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(2, 2),
          blurRadius: 10,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Colors.white.withOpacity(0.85),
          offset: Offset(-2, -2),
          blurRadius: 8,
          spreadRadius: 2,
        ),
      ], borderRadius: BorderRadius.circular(100), color: Colors.grey.shade300),
      child: Column(
        children: [
          Image.network(
            itemImg!,
            fit: BoxFit.contain,
            // height: 50,
            // width: 50,
          ),
          Text(
            itemName!,
            style: Constants.kBtnTextStyle,
          )
        ],
      ),
    );
  }

  Widget getMealItem() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.network(
              itemImg!,
              fit: BoxFit.contain,
              // height: 50,
              // width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                itemName!,
                style: Constants.kBtnTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
