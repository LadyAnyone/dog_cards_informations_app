import 'package:dog_cards_informations_app/product/dogs_card.dart';
import 'package:flutter/material.dart';

import '../core/const/String.dart';
import '../product/navigation_bar.dart';

class DogsCardView extends StatefulWidget {
  const DogsCardView({super.key});

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
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: const [CardExample(), CardExample(), CardExample()],
        ),
      ),
      bottomNavigationBar: DogCardViewBottomNavigationBar(),
    );
  }
}
