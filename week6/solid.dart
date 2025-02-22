// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

// S - Oluşturulan sınıf kendi amacına hitap eder. Başka bir iş yapmamalı.

class UserManager {
  String name;
  UserManager({required this.name});
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);
  void updateNameAndlocalization(args) {
    manager.changeUserName('gulsah');
    changeLocalization();
  }

  void changeLocalization() {
    print('user localization');
  }
}

// O - Core classlar kendi içinde değiştirilememeli ama bu sınıflardan türeyenler ile de büyüyebilmeli.

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(super.name, super.money);
  final String category = 'category';
}

// L - Class, Alt dallardan üst dallara eşitlenebilir.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

// I -

abstract class IUserOperation implements IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

// D - En üst classlarda alt classların bağımlılıkları olmamalı. Kendi işlerini yapıp kendi logiclerini döndürmeli.

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraReader iphoneCameraReader;

  DeviceCameraManager(this.iphoneCameraReader);
  @override
  void readQR() {}
}

class IphoneCameraReader extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
