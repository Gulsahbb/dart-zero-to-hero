// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../week4/model/user_model.dart';

void main(List<String> args) {
  // Arabalar sınıfım olacak.
  // Araba modeli, ismi, parası kesin olacak şehri olmayacak, ikinci el durumu eğer müşteri söylemezse
  // her ürün ikinci el kabul edilecek.

  /* final model = carModel(
    category: CarModel.bmw,
    name: 'bmw x5',
    money: 1412,
    isSecondHand: false,
  );*/

  final carItems = [
    CarModel(
      category: CarModels.bmw,
      name: 'Bmw x5',
      money: 55,
      isSecondHand: false,
    ),
    CarModel(
      category: CarModels.toyota,
      name: 'Toyota e2',
      money: 44,
      isSecondHand: false,
    ),
    CarModel(category: CarModels.yamaha, name: 'Yamaha a2', money: 33),
    CarModel(category: CarModels.bmw, name: 'Bmw x5', money: 11),
    CarModel(
      category: CarModels.yamaha,
      name: 'Yamaha w2',
      money: 99,
      isSecondHand: false,
    ),
  ];

  /* final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);
*/
  final newCar = CarModel(
    category: CarModels.yamaha,
    name: 'Yamaha w2',
    money: 99,
    isSecondHand: false,
  );
  /*
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('Aynısı elimizde var.');
  } else {
    print('Aynı arabadan yok.');
  }*/

  /*final resultBmwMore20 =
      carItems
          .where(
            (element) =>
                element.category == CarModels.bmw && element.money > 20,
          )
          .join();
  print(resultBmwMore20);*/

  // Sadece isimleri yan yana göster
  /*final carsName = carItems.map((e) => e.name).join(',');
  print(carsName);*/

  // elimde mercedes var mı
  // final mercedesCar = carItems.singleWhere( (element) => element.category == CarModel.mercedes,  );
  // unhandled exception hatası verir.SingleWhere yapınca
  // print(mercedesCar);
  /*
  try {
    final mercedesCar = carItems.singleWhere(
      (element) => element.category == CarModels.mercedes,
    );
    print(mercedesCar);
  } catch (e) {
    print('Araba yok.');
  } finally {
    print('Her türlü senaryonda çalışır. Ne yapmak istiyorsun...');
  }*/

  final _mercedes = CarModel(
    category: CarModels.mercedes,
    name: 'Mercedes w2',
    money: 22,
  );
  carItems.add(_mercedes);

  // Arabaları büyükten küçüğe sırala.
  carItems.sort((first, second) => second.money.compareTo(first.money));
  print('SIRALAMA : $carItems');

  // Bütün arabaları user a çevirelim
  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  /*
  carItems.remove(_mercedes);
  carItems.removeWhere(
    (element) => element.category == CarModels.bmw || element.money < 30,
  );
  print('BMW olan veya 30 dan düşük olanlar silindi. : ${carItems}');*/
}

void calculateToUser(List<CarModel> items) {
  //itemleri user yap ve bu objeleri düzelt.
  final _items = List<CarModel>.from(items);
  final newItems =
      _items.map((CarModel e) {
        if (e.category == CarModels.bmw) {
          e.category = CarModels.yamaha;
        }
        if (e.isSecondHand) {
          e.isSecondHand = false;
        }
        return e;
      }).toList();
  print('USER a çevrildi. : ${newItems}');
}

class CarModel {
  CarModels category;
  final String name;
  final double money;
  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,

    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
