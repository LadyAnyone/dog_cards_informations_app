import 'package:dog_cards_informations_app/product/dog_card.dart';
import 'package:dog_cards_informations_app/product/dogs.dart';
import 'package:dog_cards_informations_app/views/landing_page.dart';
import 'package:flutter/material.dart';

import '../core/const/string.dart';
import '../models/dog_model.dart';

class DogsCardView extends StatefulWidget {
  const DogsCardView({super.key});

  @override
  State<DogsCardView> createState() => _DogsCardViewState();
}

class _DogsCardViewState extends State<DogsCardView> {
  String adana = const LandingView().adana;

  String? adas;
//  LandingView.

  // bunu stackoverflow"a sor
//   LandingView().adana;

//   void asda() {
//     LandingView().adana;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectStrings.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView.builder(
          itemCount: DogsConstants().dogs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final dog = DogsConstants().dogs[index];
            return DogCard(dog: dog);
          },
        ),
      ),
    );
  }
}
