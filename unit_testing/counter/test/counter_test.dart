import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {
  late Counter counter;

  // Pretest
  setUp(() {
    //Arrange
    counter = Counter();
  });
  // setUpAll(() => null);

//Testing
  group('Counter Class', () {
    test(
        'given counter class when it is instantiated then value of count should be 0',
        () {
      //Act
      final val = counter.count;
      expect(val, 0);
    });
    test(
        'given counter class when it is incrementCounter then value of count should be 1',
        () {
      //Act
      counter.incrementCounter();
      final val = counter.count;
      expect(val, 1);
    });
    test(
        'given counter class when it is decrementCounter then value of count should be -1',
        () {
      //Act
      counter.decrementCounter();
      final val = counter.count;
      expect(val, -1);
    });
  });
}
