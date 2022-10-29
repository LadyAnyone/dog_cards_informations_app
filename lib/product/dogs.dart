import 'package:dog_cards_informations_app/core/const/image_url.dart';
import 'package:dog_cards_informations_app/models/dog_model.dart';
import 'package:dog_cards_informations_app/models/range.dart';

class DogsConstants {
  final List<Dog> dogs = [
    Dog(
        name: 'Labrador Retriever',
        lifeTimeRange: Range(min: 10, max: 12),
        originCountry: 'Kanada',
        heightRange: Range(min: 54, max: 66),
        weightRange: Range(min: 24, max: 36),
        pictureURL: ProjectImageUrl.labrodorImageUrl,
        detail:
            'The Labrador Retriever is a dog that does not exaggerate in its movements, showing moderate behavior. He is friendly, smart, sweet-tempered, athletic. It has rather large bones, a square-shaped body, a broad head, a long neck and a strong jaw. Its wide and strong jaw allows it to easily carry large game birds such as Canada Geese. It has strong sturdy legs that support its heavy, bulky body. Its webbed feet help it run powerfully on land, while allowing it to swim easily in water. Its short, straight and soft undercoat and double-layered fur help protect the Labrador dog in all weather conditions, even in cold icy waters. The Labrador Retriever has managed to be among the popular breeds in every period with its intelligence, sweet nature and being a hardworking dog.'),
    Dog(
        name: 'Golden Retriever',
        lifeTimeRange: Range(min: 10, max: 13),
        originCountry: 'İngiltere',
        heightRange: Range(min: 52, max: 61),
        weightRange: Range(min: 25, max: 34),
        pictureURL: ProjectImageUrl.goldenImageUrl,
        detail:
            'The Golden Retriever attracts all eyes with its cuteness, friendliness and playfulness in its environment. This cute medium-sized breed wins hearts with its soft and eye-catching body in light brown and cream tones. He is athletic and has a strong build. With its strong fore and hind legs, it has the ability to move and hunt in water as well as on land. It has smooth or wavy fluffy fur. The friendly Golden Retriever quickly becomes a member of your family. Because they are intelligent and can execute commands, the training process can be completed in a short time depending on the layout shown. They enjoy spending time with family members and are eager to please their owner. The Golden Retriever breed loves to be petted and shown their love.'),
    Dog(
      name: 'Husky',
      lifeTimeRange: Range(min: 11, max: 15),
      originCountry: 'Sibirya',
      heightRange: Range(min: 50, max: 60),
      weightRange: Range(min: 15, max: 27),
      pictureURL: ProjectImageUrl.huskyImageUrl,
      detail:
          'The Siberian Husky is a strong, intelligent, resilient and noble dog. It is called Siberian Husky, Siberian Husky and Arctic Husky. It has taken place in people\'s lives with its fun-loving and adventurous and sometimes mischievous nature. It is known as a working sled dog with medium size, strength, speed and endurance. It has a fur structure that protects it in very cold weather. They carry light loads, packages at medium speed on frozen areas, on glaciers. Although he usually has a sharp facial expression, the Siberian Husky is a friendly, affectionate, caring dog that gets along well with everyone.',
    )
  ];
}
