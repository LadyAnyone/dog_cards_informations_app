// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        padding: ConstantPadding.paddingAllLarge,
        decoration: BoxDecoration(
          //color: Theme.of(context).backgroundColor,
          border: Border.all(
            color: Colors.pink, //dışardan al
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: ConstantPadding.paddingBottomLarge,
              child: Text(dog.name),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Image.network(dog.pictureURL),
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
              child: const Text('Details'),
            )
          ],
        ),
      ),
    );
  }
}

class ConstantPadding {
  static const paddingAllLarge = EdgeInsets.all(30.0);
  static const paddingBottomLarge = EdgeInsets.only(bottom: 30.0);
}
