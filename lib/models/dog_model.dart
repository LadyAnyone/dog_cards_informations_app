// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dog_cards_informations_app/models/range.dart';

class Dog {
  final String name;
  final Range lifeTimeRange;
  final String originCountry;
  final Range heightRange;
  final Range weightRange;
  final String pictureURL;
  final String detail;

  Dog({
    required this.name,
    required this.lifeTimeRange,
    required this.originCountry,
    required this.heightRange,
    required this.weightRange,
    required this.pictureURL,
    required this.detail,
  });
}
