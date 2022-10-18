// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dog_cards_informations_app/views/dog_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:dog_cards_informations_app/product/dogs.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

//margin ve padding farkını oku
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0), // tekrar bak
      child: Card(
        child: Container(
          padding: ConstantPadding.paddingAllLarge,
          decoration: BoxDecoration(
            //color: Theme.of(context).backgroundColor,
            border: Border.all(color: Colors.black, width: 1),
          ), //border=çerçeve
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.favorite),
                  ),
                ],
              ),
              Padding(
                padding: ConstantPadding.paddingBottomLarge,
                child: Text(Dogs().Labrador.name),
              ),
              const Expanded(
                  child: Padding(
                padding: ConstantPadding.paddingBottomLarge,
                child: Placeholder(),
              )),
              //expended kelimesini not

              Row(
                children: const [
                  DogCardBottomText(
                    intelligent: "asd",
                  ),
                  DogCardBottomText(intelligent: "asd"),
                ],
              ),
              Row(
                children: const [
                  DogCardBottomText(intelligent: "asd"),
                  DogCardBottomText(intelligent: "asd"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DogDetailView();
                  }));
                },
                child: Text('Detaylar'),
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//bottomNavigationBarekle

class DogCardBottomText extends StatelessWidget {
  final String intelligent;
  const DogCardBottomText({
    Key? key,
    required this.intelligent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Text(
        intelligent,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

class ConstantPadding {
  static const paddingAllLarge = EdgeInsets.all(30.0);
  static const paddingBottomLarge = EdgeInsets.only(bottom: 30.0);
}
