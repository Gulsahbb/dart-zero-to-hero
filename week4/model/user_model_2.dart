class User2 {
  final String customerName;
  int _customerMoney;

  int get customerMoney => _customerMoney;

  set customerMoney(int? customerMoney) {
    _customerMoney = customerMoney == null ? 0 : customerMoney;
  }

  final int? customerAge;
  final String? customerCity;

  late final String userCode;
  User2(
    this.customerName,
    this._customerMoney, {
    this.customerAge,
    this.customerCity,
  }) {
    userCode =
        '$customerName isimli müşterinin şehri ${(customerCity ?? 'İstanbul')}';
  }
}
