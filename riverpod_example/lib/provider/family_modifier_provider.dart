import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyModifierProvider = StateProvider.family<int,String>(
  (ref, data) {
    return 10 * int.parse(data);
  },
);
