import 'package:dog_cards_informations_app/product/dog_card.dart';
import 'package:dog_cards_informations_app/product/dogs.dart';
import 'package:flutter/material.dart';

import '../core/const/String.dart';
import '../product/dog_model.dart';
import '../product/navigation_bar.dart';

class DogsCardView extends StatefulWidget {
  const DogsCardView({super.key, required this.dogs});
  final List<Dog> dogs;

  @override
  State<DogsCardView> createState() => _DogsCardViewState();
}

class _DogsCardViewState extends State<DogsCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectStrings.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView.builder(
          itemCount: DogsConstants().dogs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final dog = DogsConstants().dogs[index];
            return DogCard(dog: dog);
          },
        ),
      ),
      bottomNavigationBar: DogCardViewBottomNavigationBar(),
    );
  }
}
