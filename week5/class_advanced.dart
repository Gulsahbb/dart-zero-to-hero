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

  // Müşteri parasına 10 ekle. id yi 1 arttır.ismini veli yap
  moneyBank1.money += 10;
  print('Banka 1 Para : ${moneyBank1.money}');

  moneyBank1
    ..money += 10
    ..updateName('veli');
  print('${moneyBank1.money} + ${moneyBank1.name} + ${moneyBank1.id}');
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

class Bank with BankMixin {
  int money;
  final String id;
  String? name;
  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'ABC';
  }

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayHello() {
    calculateMoney(money);
  }
}

// Bİrden fazla durum varsa kullanılır.
mixin BankMixin {
  void sayHello();
  void calculateMoney(int money) {
    print('money');
  }
}
