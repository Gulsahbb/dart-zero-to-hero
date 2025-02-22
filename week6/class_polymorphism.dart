// çok biçimlilik

void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'gulsah';

  @override
  void sayName() {
    print('Merhaba $name');
    print('Nasılsın??');
  }
}

class English implements IUser {
  @override
  String get name => 'rose';

  @override
  void sayName() {
    print('Hello $name');
    print('Let\'s meet our friends');
  }
}
