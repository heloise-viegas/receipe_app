import 'package:flutter/material.dart';
import 'package:receipes_app/modals/receipe.dart';
import 'package:receipes_app/ui%20components/reusableCard.dart';

class ReceipeView extends StatelessWidget {
  final Receipe receipe;
  ReceipeView({required this.receipe});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ReusableCard(
                    isMeal: true,
                    itemName: receipe.receipeName,
                    itemImg: receipe.receipeImg,
                    onTapped: () {},
                  ),
                  Text(receipe.receipeMeasure1! +
                      ' ' +
                      receipe.receipeIngredient1!),
                  Text(receipe.receipeMeasure2! +
                      ' ' +
                      receipe.receipeIngredient2!),
                  Text(receipe.receipeMeasure3! +
                      ' ' +
                      receipe.receipeIngredient3!),
                  Text(receipe.receipeMeasure4! +
                      ' ' +
                      receipe.receipeIngredient4!),
                  Text(receipe.receipeMeasure5! +
                      ' ' +
                      receipe.receipeIngredient5!),
                ],
              )),
        ),
      ),
    );
  }
}
