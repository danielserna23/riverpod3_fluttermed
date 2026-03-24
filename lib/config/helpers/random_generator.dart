import 'package:random_name_generator/random_name_generator.dart';

class RandomGenerator {
  RandomGenerator._();

  static String getRandomName() {
    final randomNames = RandomNames(Zone.spain);

    return randomNames.fullName();
  }

  static Stream<String> randomNameStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (i) => getRandomName(),
    ).take(10);
  }
}
