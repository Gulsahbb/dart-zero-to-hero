void main() {
  // String name = '';
  List<int> moneys = [100, 110, 500];
  print('musteri 1 parası: ${moneys[0]}');
  // Listelerde referans type olduğu için final yaptığımızda liste içinde değişiklik yapabiliriz.
  final List<int> newMoney = [100, 110, 500];
  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 300);
  print(moneys);
  newMoney.clear();
  print(newMoney);
  // newMoney.reversed.toList();

  // 100 müşteri olsun sıra ile numarasına göre 5 tl ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // Müşteri 100 30 40 60
  // 35 tlen büyük olanlara kredi verebiliriz.
  // Küçük olanşara görüşürüz diyebiliriz.

  List<int> moneyCustomerNew = [100, 30, 40, 60, 500];
  moneyCustomerNew.sort();
  for (int i = 0; i < moneyCustomerNew.length; i++) {
    //  print('Müşteri parası ${moneyCustomerNew[i]}');
    int deger = 35;
    if (moneyCustomerNew[i] > deger) {
      print('Kredi Hazır');
    } else {
      print('BYE');
    }
  }
}
