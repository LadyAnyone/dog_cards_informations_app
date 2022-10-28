// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dog_cards_informations_app/core/const/string.dart';

import '../models/dog_model.dart';

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
        title: Text(
          ProjectStrings.title,
        ),
      ),
      body: Column(
        children: [
          Text(
            widget.dog.detail,
          ),
        ],
      ),
    );
  }
}
