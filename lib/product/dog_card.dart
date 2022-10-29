// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dog_cards_informations_app/core/const/string.dart';
import 'package:dog_cards_informations_app/core/const/media_quary.dart';
import 'package:dog_cards_informations_app/core/const/padding.dart';
import 'package:flutter/material.dart';
import 'package:dog_cards_informations_app/models/dog_model.dart';
import 'package:dog_cards_informations_app/views/dog_detail_view.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key? key,
    required this.dog,
  }) : super(key: key);
  final Dog dog;

//margin ve padding farkını oku
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: ProjectPadding.projectLargeAllPadding,
        decoration: BoxDecoration(
          //color: Theme.of(context).backgroundColor,
          border: Border.all(),
        ),
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.projectLargeOnlyBottomPadding,
              child: Text(
                dog.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  ProjectMediaQuary.minMediaQuarySize,
              width: MediaQuery.of(context).size.width *
                  ProjectMediaQuary.mediumMediaQuarySize,
              child: Image.network(
                dog.pictureURL,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DogDetailView(dog: dog);
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(),
              ),
              child: Text(ProjectStrings.dogCardDetailButton),
            )
          ],
        ),
      ),
    );
  }
}
