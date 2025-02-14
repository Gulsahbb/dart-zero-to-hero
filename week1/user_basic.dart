void main() {
  // Müşteri adını tut.
  // Müşterinin parasını öğren.
  // Müşteriye merhaba diyip parasını söyle.
  // Müşteri bu bankaya geldiği için parasına +5 tl ekle.

  int userMoney = 25;
  String userName = 'Gul';
  String metin = 'Merhaba';

  userMoney = userMoney + 5;
  print('$metin $userName Bakiye : $userMoney');
  print('--------------------------');

  userMoney -= 10;
  print('Paranız değer kaybetti Bakiye : $userMoney');
  // int bir değeri böldüğümüzde double bir değer oluşabilir.Bu yüzden (~) kullanarak bunu yazdırabiliriz.

  print('--------------------------');
  userMoney = userMoney ~/ 2;
  print(userMoney);

  print('--------------------------');
  double aMoney = 300.4;
  print('A Bakiye : $aMoney');
  aMoney = aMoney / 4;
  print('A paranız uçtu Bakiye : $aMoney');

  print('--------------------------');
  // Yeni bir user adı oluştur.
  // Yeni bir para oluştur.
  // Parayı 20 ye böl ve ekranda göster.
  String userName2 = 'Ayşe';
  int userMoney2 = 383;

  userMoney2 = userMoney2 ~/ 20;
  print('$metin $userName2 Paranız : $userMoney2');
}
