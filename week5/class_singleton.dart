void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney();
  // Bir tane örenk olsun her yerden kullanılsın.
  // Kullanımı riskli her yerde kullanılması.
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

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {}
