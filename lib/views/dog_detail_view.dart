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
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Padding(
            padding: ProjectPadding.projectMediumAllPadding,
            child: Text(
              widget.dog.detail,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          DogInformationText(
            information: 'Origin:${widget.dog.originCountry} ',
          ),
          DogInformationText(
            information:
                'Height: ${widget.dog.heightRange.min.toString()} - ${widget.dog.heightRange.max.toString()}',
          ),
          DogInformationText(
            information:
                'Life: ${widget.dog.lifeTimeRange.min.toString()} - ${widget.dog.lifeTimeRange.max.toString()}',
          ),
          DogInformationText(
            information:
                'Weight: ${widget.dog.weightRange.min.toString()} - ${widget.dog.weightRange.max.toString()}',
          ),
        ],
      ),
    );
  }
}

class DogInformationText extends StatelessWidget {
  const DogInformationText({
    Key? key,
    required this.information,
  }) : super(key: key);

  final String information;

  @override
  Widget build(BuildContext context) {
    return Text(
      information,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
