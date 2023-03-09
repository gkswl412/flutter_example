import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worker_list_example/worker/model/worker_model.dart';
import 'package:worker_list_example/worker/repository/worker_repository.dart';

final workerProvider = StateNotifierProvider<WorkerStateNotifier,List<WorkerModel>>((ref) {
  final repository = ref.watch(workerRepositoryProvider);

  final notifier = WorkerStateNotifier(repository: repository);

  return notifier;
});

class WorkerStateNotifier extends StateNotifier<List<WorkerModel>> {
  final WorkerRepository repository;

  WorkerStateNotifier({
    required this.repository,
  }): super([]) {
    getWorker();
  }

  getWorker() async {
    final resp = await repository.getWorker({'siteId': 128, 'allSearch': ''});

    state = resp.body;
  }
}