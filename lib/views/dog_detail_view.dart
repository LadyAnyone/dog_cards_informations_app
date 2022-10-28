// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dog_cards_informations_app/core/const/String.dart';
import 'package:dog_cards_informations_app/product/dogs.dart';

import '../product/dog_model.dart';
import '../product/navigation_bar.dart';

class DogDetailView extends StatefulWidget {
  final Dog dog;
  const DogDetailView({
    Key? key,
    required this.dog,
  }) : super(key: key);

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
        children: [Text(widget.dog.detail)],
      ),
      bottomNavigationBar: DogCardViewBottomNavigationBar(),
    );
  }
}
