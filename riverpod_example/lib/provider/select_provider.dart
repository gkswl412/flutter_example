import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/model/worker_model.dart';

final selectProvider = StateNotifierProvider<SelectNotifier, WorkerModel>(
  (ref) => SelectNotifier(),
);

class SelectNotifier extends StateNotifier<WorkerModel> {
  SelectNotifier()
      : super(
          WorkerModel(
            name: '박정현',
            age: 31,
            vendor: Vendor.raycom,
            jobType: JobType.programmer,
            isForeigner: false,
          ),
        );

  toggleIsForeigner() {
    state = state.copyWith(isForeigner: !state.isForeigner);
  }

  toggleJobType() {
    state = state.copyWith(
        jobType: state.jobType == JobType.programmer
            ? JobType.designer
            : JobType.programmer);
  }
}
