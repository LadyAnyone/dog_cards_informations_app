// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dog_cards_informations_app/core/const/padding.dart';
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
          Padding(
            padding: ProjectPadding.projectMediumAllPadding,
            child: Text(
              widget.dog.detail,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Text(
            'Origin:  ${widget.dog.originCountry}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
              'Height: ${widget.dog.heightRange.min.toString()} - ${widget.dog.heightRange.max.toString()}',
              style: Theme.of(context).textTheme.bodyLarge),
          Text(
              'Life: ${widget.dog.lifeTimeRange.min.toString()} - ${widget.dog.lifeTimeRange.max.toString()}',
              style: Theme.of(context).textTheme.bodyLarge),
          Text(
              'Weight: ${widget.dog.weightRange.min.toString()} - ${widget.dog.weightRange.max.toString()}',
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
