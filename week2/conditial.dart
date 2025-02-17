void main() {
  int money = 15;
  String userName = 'Gulsah';
  print('$money' + userName);

  if (money > 10) {
    print('RICH');
  } else {
    print('NOT RICH');
  }

  money = money - 10;

  if (money > 10) {
    print('MORE RICH');
  } else {
    print('GO AWAY');
  }

  // musteri bankaya gelir. 10 tlsi var. bir sorgu yapar. Parası yeterliyse sorgu sonucu 20 tlsi alınır.
  // Kalan para 0 dan küçükse bankadan kovulur.
  // Eğer parası bankingconsta yetmiyorsa bankaya almayın.
  int newCustomerMoney = 0;
  const int bankingCost = 5;
  if (newCustomerMoney > bankingCost) {
    print('Hoşgeldiniz');
    newCustomerMoney = newCustomerMoney - bankingCost;
  } else if (newCustomerMoney > 0) {
    print('Lütfen sıra alınız.');
  } else {
    print('Lütfen kredinizi ödeyin.');
  }
}
