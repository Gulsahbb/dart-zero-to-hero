void main(List<String> args) {
  final user = _User('veli', age: 19);

  // Yaş kontrolü
  if (user.age is int) {
    // is! değil mi kontrolü
    if (user.age! < 18) {
      print('Yaşı 18 den küçük.');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithSNumber(15);
    }
  }

  // Kullanıcı parası var ama değişken olabilir.
  // Parası olan adamın parametresi isim veya değer olabilir.
  final _newType = user.moneyType is String ? user.moneyType as String : '';

  print(_newType + 'A');

  // Müşteri banka sınıfından iki elemanı toplayıp sonucu söyler misin?

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(50, '12');
  print(moneyBank1 == moneyBank2);
  print(moneyBank1 + moneyBank2);

  // Idsi aynı olanlar aynı müşteri olmalıdır.

  print(moneyBank1.id == moneyBank2.id);
}

class _User {
  final String name;

  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithSNumber(int number) {
    moneyType = number;
  }
}

class Bank {
  final int money;
  final String id;
  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  @override
  String toString() {
    return super.toString() + 'ABC';
  }

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }
}
