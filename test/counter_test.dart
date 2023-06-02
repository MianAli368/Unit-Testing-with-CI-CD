import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_counter/counter_controller.dart';

void main() {
  // Arrange
  late Counter counter;

  setUp(() => {
        // Arrange
        counter = Counter()
      });

  group("Counter Class - ", () {
    test(
        "given counter class when it is instantiated then value of count should be 0",
        () {
      // Act
      final val = counter.count;

      // Asset
      expect(val, 0);
    });

    test(
        "given counter class when it is incremented the value of count should be 1",
        () {
      // Act
      counter.incrementCounter();
      final val = counter.count;
      // Assert
      expect(val, 1);
    });

    test(
        "given counter class when it is decremented the value of count should be -1",
        () {
      // Act
      counter.decrementCounter();
      final val = counter.count;
      // Assert
      expect(val, -1);
    });

    test(
        "given counter class when it is reset the value of count should be zero",
        () {
      // Act
      counter.reset();
      final val = counter.count;

      // Assert
      expect(val, 0);
    });
  });
}
