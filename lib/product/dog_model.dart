// ignore_for_file: public_member_api_docs, sort_constructors_first
class DogModel {
  final String name;
  final String lifeTime;
  final String origin;
  final String barkLevel;
  final String obedienceLevel;
  final String intelligence;
  final String size;
  final String weight;

  DogModel(
    //required ekle
    this.name,
    this.lifeTime,
    this.origin,
    this.barkLevel,
    this.obedienceLevel,
    this.intelligence,
    this.size,
    this.weight,
  );
}

//builder