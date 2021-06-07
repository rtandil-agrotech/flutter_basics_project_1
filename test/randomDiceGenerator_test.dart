import 'package:flutter_basics_project_1/randomDiceGenerator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing Random Dice Generator Function', () {
    final instanceOfClass = RandomDiceGenerator();
    int number;
    bool test = true;

    for (int i = 0; i < 10; i++) {
      number = instanceOfClass();
      print(number);
      if (number > 6 || number == 0) {
        test = false;
      }
    }

    expect(test, true);
  });
}
