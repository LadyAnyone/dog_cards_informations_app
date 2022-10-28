import 'package:dog_cards_informations_app/models/dog_model.dart';
import 'package:dog_cards_informations_app/models/range.dart';

// localization dosyası ???????????????????????
class DogsConstants {
  final List<Dog> dogs = [
    Dog(
        name: 'Labrador Retriever',
        lifeTimeRange: Range(min: 10, max: 12),
        originCountry: 'Kanada',
        heightRange: Range(min: 54, max: 66),
        weightRange: Range(min: 24, max: 36),
        pictureURL: 'https://blog.petibom.com/wp-content/uploads/2021/10/yavru-sari-siyah-labrador-retriever-irki.jpg',
        detail:
            'Labrador Retriever ılımlı davranışlar gösteren hareketlerinde aşırıya kaçmayan bir köpektir. Cana yakın, akıllı, tatlı mizaçlı, atletik yapılıdır. Oldukça büyük kemiklere, kare şeklinde vücuda, geniş kafa yapısına, uzun boyna ve güçlü çeneye sahiptir. Geniş ve güçlü çenesi onun Kanada Kazları gibi büyük av kuşlarını rahatlıkla taşımanı sağlar. Ağır, iri vücudunu taşıyan güçlü sağlam bacaklara sahiptir. Perdeli ayakları karada güçlü koşmasına yardımcı olurken, suda da kolaylıkla yüzmesini sağlamaktadır. Kısa, düz ve yumuşak astarı ile çift katmanlı kürkü Labrador köpeğinin her türlü hava koşulunda, soğuk buzlu sularda bile korunmasına yardımcı olur. Labrador Retriever zekâsı, tatlı yapısı ve çalışkan bir köpek oluşuyla her dönemde popüler ırklar arasında yer almayı başarmıştır.'),
    Dog(
        name: 'Golden',
        lifeTimeRange: Range(min: 10, max: 13),
        originCountry: 'İngiltere',
        heightRange: Range(min: 52, max: 61),
        weightRange: Range(min: 25, max: 34),
        pictureURL: 'https://blog.petibom.com/wp-content/uploads/2021/09/Yavru-golden-retriever.jpg',
        detail:
            'Golden Retriever bulunduğu ortamda sevimliliği, cana yakınlığı ve oyunculuğu ile tüm gözleri üzerine çekmektedir. Orta büyüklüğe sahip bu sevimli ırk, açık kahverengi ve krem tonlarındaki yumuşak ve göz alıcı bedeniyle kalpleri kazanır. Atletik, ve güçlü bir yapısı vardır. Güçlü ön ve arka ayakları ile karada olduğu gibi suda da hareket etme, avlanma yeteneğine sahiptir. Düz veya dalgalı kabarık kürke sahiptir. Dost canlısı olan Golden Retriever kısa sürede ailenizden birisi olur. Akıllı ve komutları uygulayabilen bir cins oldukları için eğitim süreci gösterilen düzene bağlı olarak kısa sürede tamamlanabilir. Aile üyeleri ile zaman geçirmekten hoşlanırlar ve sahibini memnun etmeye istekli tavırlar sergilerler. Golden Retriever ırkı sevilmeye ve sevgilerini göstermeye bayılır.'),
    Dog(
        name: 'Sibiryi Kurdu',
        lifeTimeRange: Range(min: 11, max: 15),
        originCountry: 'Sibirya',
        heightRange: Range(min: 50, max: 60),
        weightRange: Range(min: 15, max: 27),
        pictureURL:
            'https://blog.petibom.com/wp-content/uploads/2021/10/mavi-gozlu-Siberian-husky-irki-ozellikleri.jpg',
        detail:
            'Sibirya Kurdu, güçlü, zeki, dayanıklı ve asil duruşlu bir köpektir. Sibirya Kurdu, Siberian Husky ve Arctic Husky adlarıyla anılmaktadır. Eğlenmeyi seven ve maceracı yer yer de yaramaz yapısı ile insanların hayatında yer almıştır. Orta büyüklükte, gücü, hızı, dayanıklılığıyla çalışan kızak köpeği olarak bilinir. Çok soğuk havalarda onu koruyan bir kürk yapısı vardır. Donmuş alanlarda, buzullar üzerinde orta hızda hafif yükleri, paketleri taşırlar. Genellikle keskin yüz ifadesine sahip olsa da Sibirya Kurdu arkadaş canlısı, sevecen, ilgili ve herkesle iyi anlaşabilen bir köpektir.'),
  ];
}
