void main(List<String> args) {
  String userName = 'a';

  if (userName.length > 2) {
    print('a');
  } else {
    throw userNameException();
  }
}

class userNameException implements Exception {
  @override
  String toString() {
    return 'userName null girmişsin. Bunu düzelt';
  }
}
