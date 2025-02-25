// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(data: 1);
  user.data;
  final adminUser = AdminUser();
  removeUserAll(adminUser);
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({required this.data});
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}

// Baştan Sona Dart Programlama Dili