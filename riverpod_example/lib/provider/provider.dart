import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/model/worker_model.dart';
import 'package:riverpod_example/provider/state_notifier_provider.dart';

final filterProvider = StateProvider((ref) => Vendor.all);

final filteredWorkerListProvider = Provider<List<WorkerModel>>((ref) {
  final filterState = ref.watch(filterProvider);
  final workerListState = ref.watch(stateNotifierProvider);

  if (filterState == Vendor.all) {
    return workerListState;
  }

  return workerListState
      .where(
        (e) => filterState == e.vendor,
      )
      .toList();
});
