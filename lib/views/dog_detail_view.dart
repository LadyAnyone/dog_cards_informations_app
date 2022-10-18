import 'package:dog_cards_informations_app/core/const/String.dart';
import 'package:flutter/material.dart';

import '../product/navigation_bar.dart';

class DogDetailView extends StatefulWidget {
  const DogDetailView({super.key});

  @override
  State<DogDetailView> createState() => _DogDetailViewState();
}

class _DogDetailViewState extends State<DogDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectStrings.title),
      ),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: DogCardViewBottomNavigationBar(),
    );
  }
}
