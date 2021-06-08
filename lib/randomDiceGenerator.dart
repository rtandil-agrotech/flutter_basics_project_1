import 'dart:math';

class RandomDiceGenerator {
  int call() {
    return _randomDiceGenerator();
  }

  int _randomDiceGenerator() {
    int number = Random().nextInt(6);
    return number + 1;
  }
}
