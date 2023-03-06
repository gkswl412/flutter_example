import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProvider = FutureProvider<List<int>>((ref) async {
  await Future.delayed(
    Duration(seconds: 2),
  );

  return [1, 2, 3, 4, 5];
});
