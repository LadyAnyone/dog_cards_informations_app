import 'package:dog_cards_informations_app/core/const/image_url.dart';
import 'package:dog_cards_informations_app/core/const/media_quary.dart';
import 'package:dog_cards_informations_app/core/const/string.dart';
import 'package:dog_cards_informations_app/core/const/padding.dart';
import 'package:dog_cards_informations_app/views/dogs_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension MediaQueryExtension on LandingView {
  String get adana => 'adana';
}

class LandingView extends StatelessWidget {
  const LandingView({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: ProjectPadding.projectSmallAllPadding,
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    ProjectMediaQuary.mediumMediaQuarySize,
                width: double.infinity,
                child: Image.network(
                  ProjectImageUrl.landingImageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(ProjectStrings.projectLandingTitle,
                style: Theme.of(context).textTheme.titleLarge
                ,
                textAlign: TextAlign.center),
            Padding(
              padding: ProjectPadding.projectLargeHorizontalPadding +
                  ProjectPadding.projectLargeVerticalPadding,
              child: Text(
                ProjectStrings.landingViewExplanation,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: ProjectMediaQuary.largeMediaQuarySize,
              width: ProjectMediaQuary.xLargeMediaQuarySize,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const DogsCardView();
                      },
                    ),
                  );
                },
                child: Text(
                  ProjectStrings.landingElevatedButtonText,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
