import 'package:dog_cards_informations_app/core/const/String.dart';
import 'package:dog_cards_informations_app/core/const/padding.dart';
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
        padding: ProjectPadding.projectLargeOnlyRightPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: ProjectPadding.projectSmallAllPadding,
              child: const LandingSizedBox(),
            ),
            Text(ProjectStrings.projectHeadline,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w700, fontSize: 30),
                textAlign: TextAlign.center),
            Padding(
              padding: ProjectPadding.projectLargeHorizontalPadding +
                  ProjectPadding.projectLargeVerticalPadding,
              child: Text(
                ProjectStrings.bodyText,
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
                        return const DogsCardView(
                          dogs: [],
                        );
                      },
                    ));
                  },
                  child: Text(
                    ProjectStrings.landingElevatedButtonText,
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

class LandingSizedBox extends StatelessWidget {
  const LandingSizedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 800,
        child: Image.network(
          'https://blog.petibom.com/wp-content/uploads/2021/10/yavru-sari-siyah-labrador-retriever-irki.jpg',
          fit: BoxFit.contain,
        ));
  }
}
