import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/landing_page.dart';

void main() {
  runApp(const DogsCard());
}

class DogsCard extends StatelessWidget {
  const DogsCard({super.key});

  @override
  Widget build(BuildContext context) {
    String mainTitle = 'Dogs Card';
    return MaterialApp(
      title: (mainTitle),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              indicatorColor: Colors.black, //kontrol et
              primarySwatch: Colors.deepPurple,
              backgroundColor: Colors.deepPurple)
          .copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: const LandingView(),
    );
  }
}


// LandingView, Eğer kullanıcı landingView'i görmüşse bir kere, o ekrandan giderken yada o ekranı gördüğü gibi
// local cache (shared_preferences'da) ilk kez görüldüğüne dair bilgiyi güncellememiz lazım
// ondan sonra kullanıcı tekrardan uygulamaya girdiği zaman, uygulama landing page'demi yoksa homeview'dam mi başlayacak 
// ona karar vereceğiz

// yapının nasıl gözüktüğünü (padding, ekrandaki yer,) gibi özellikler dışarıdan belirlenmeli

// ADVANCED Köpek detayını gidilirken Hero Widget'ı kullanılacak 












