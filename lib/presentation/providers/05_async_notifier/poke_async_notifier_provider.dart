import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/helpers/random_generator.dart';

final devsNamesProvider = StreamProvider.autoDispose<List<String>>((
  ref,
) async* {
  var names = <String>[];
  yield names;

  await for (final name in RandomGenerator.randomNameStream()) {
    names = [...names, name];
    yield names;
  }
});
