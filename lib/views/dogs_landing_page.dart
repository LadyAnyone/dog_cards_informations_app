import 'package:dog_cards_informations_app/views/dogs_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DogsLandingView extends StatelessWidget {
  const DogsLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 300,
                  width: 800,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8UNAADWz_IHO1u30mJfrXOgH6EXYwyUhztQ&usqp=CAU',
                    fit: BoxFit.contain,
                  )),
            ),
            Text("Köpek Türlerini Öğren",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w700, fontSize: 30),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75) +
                  EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Köpek türlerini hemen öğrenmek için devam et.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return DogsCardView();
                      },
                    ));
                  },
                  child: Text(
                    'Devam et!',
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButtonTheme.of(context).style),
            )
          ],
        ),
      ),
    );
  }
}
