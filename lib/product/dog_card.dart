// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:dog_cards_informations_app/product/dog_model.dart';
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
                child: Text(dog.name),
              ),
              Expanded(
                  child: Padding(
                padding: ConstantPadding.paddingBottomLarge,
                child: Image.network(dog.path),
              )),
              //expended kelimesini not

              Row(
                children: [
                  DogCardBottomText(
                    intelligent: dog.lifeTime,
                  ),
                  DogCardBottomText(intelligent: dog.origin),
                ],
              ),
              Row(
                children: [
                  DogCardBottomText(intelligent: dog.size),
                  DogCardBottomText(intelligent: dog.weight),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DogDetailView(dog: dog);
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
      padding: const EdgeInsets.all(4.0),
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
