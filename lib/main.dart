import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/const/padding.dart';
import 'views/dog_detail_view.dart';
import 'views/dogs_card_view.dart';
import 'views/dogs_landing_page.dart';

void main() {
  runApp(DogsCard());
}

class DogsCard extends StatelessWidget {
  const DogsCard({super.key});

  @override
  Widget build(BuildContext context) {
    String MainTitle = 'Dogs Card';
    return MaterialApp(
      //metarial app projede bir tane olur
      title: (MainTitle), //uygulamayı arkaya aldığında bu gözükür
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              indicatorColor: Colors.black, //kontrol et
              primarySwatch: Colors.deepPurple,
              backgroundColor: Colors.deepPurple)
          .copyWith(
              appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      )),
      home: const DogsLandingView(),
    );
  }
}
