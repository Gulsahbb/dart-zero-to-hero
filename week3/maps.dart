void main() {
  // müşteri geldi adı ahmet parası 20
  Map<String, int> users = {'ali': 15, 'ahmet': 30, 'ayşe': 50};
  print('Ahmetin Parası ${users['ahmet']}');

  // Müşteri kimler var
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }
  // Alternatif
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  // Banka - müşterilerimin birden fazla hesabı olabilir.
  // ahmet  - 3 hesabı var 300 200 80
  // mehmet - 2 hesabı var 20 130
  // veli - 1 hesabı var 70
  // Hesapları kontrol et, herhangi bir hesapta 150 tlden fazla olan varsa krediniz hazır de.

  Map<String, List<int>> gBank = {
    'ahmet': [300, 200, 80],
    'mehmet': [20, 130],
    'veli': [70],
  };

  gBank['ayşe'] = [40, 50, 25, 160];

  // 1.for bankanın tüm elemanları
  for (var name in gBank.keys) {
    // 2.for banka içindeki müşterilerin hesapları
    for (var money in gBank[name]!) {
      if (money > 150) {
        print('${gBank[name]!} - Krediniz hazır');
        break;
      }
    }
  }

  // Bankadaki müşterilerin hesaplarının toplamı

  for (var name in gBank.keys) {
    // gBank[name]! - Müşteri hesapları
    int result = 0;
    for (var money in gBank[name]!) {
      result = result + money;
    }
    print('$name senin toplam paran -> $result');
  }
}
