import 'dart:math';

class RandomCategory {
  final Random _random = Random();

  String getRandomCategory() {
    int randomNumber = _random.nextInt(2);
    String category;
    if (randomNumber == 0) {
      category = 'General';
    } else if (randomNumber == 1) {
      category = 'Business';
    } else {
      category = 'Other';
    }
    return category;
  }
}
