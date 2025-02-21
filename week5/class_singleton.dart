void main(List<String> args) {
  //  final newProduct = Product.money;
  calculateMoney();
  // Bir tane örenk olsun her yerden kullanılsın.
  // Kullanımı riskli her yerde kullanılması.

  // user classını kullanarak product yapmak istiyorum.
  final user1 = User('veli', 'a');
  final newProduct = Product(user1.product);
  final newProduct2 = Product.fromuser(user1);
  Product.veli();
}

void calculateMoney() {
  if ((Product.money ?? 0) > 5) {
    print('5 tl daha ekledik.');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int? money = 10;
  String name;
  Product(this.name);
  Product.veli([this.name = 'veli']);

  factory Product.fromuser(User user) {
    return Product(user.name);
  }
  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
