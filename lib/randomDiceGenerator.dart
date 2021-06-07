import 'dart:math';

class RandomDiceGenerator {
  int lastNumber = 0;

  int call() {
    int number;

    do {
      number = _randomDiceGenerator();
    } while (number == lastNumber);

    lastNumber = number;

    return number;
  }

  int _randomDiceGenerator() {
    int number = Random().nextInt(6);
    return number + 1;
  }
}
