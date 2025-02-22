import '../week4/model/user_model.dart';

void main(List<String> args) {
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

  // Bütün arabaları user a çevirelim
  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
}

void calculateToUser(List<CarModel> items) {
  final _items = List<CarModel>.from(items);
  final newItems =
      _items.map((CarModel e) {
        if (e.category == CarModels.bmw) {
          e.category = CarModels.yamaha;
          e.name = 'Yamaha';
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
  String name;
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
