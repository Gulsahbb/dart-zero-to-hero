void main() {
  int money = 15;

  money = money + 1;
  money += 1;
  money++;
  money--;

  String name = 'Gulsah';
  String baskurt = 'Baskurt';

  print(name + baskurt);

  if (name == 'Gulsah') {}
  if (name != 'Gulsah') {}
  if (name.length < 'Gulsah'.length) {}
  if (name.length > 'Gulsah'.length) {}
  if (name.length <= 'Gulsah'.length) {}
  if (name.length >= 'Gulsah'.length) {}

  const int appleMoney = 30;
  const double discount = 2.5;
  int myMoney = 50;

  myMoney = myMoney - (appleMoney ~/ discount);
  print(myMoney);
  print(myMoney % 2 == 0);
  print(myMoney.isEven);
  print(myMoney.isOdd);
}
