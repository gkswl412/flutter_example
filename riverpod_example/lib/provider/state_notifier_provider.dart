import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/model/worker_model.dart';

final stateNotifierProvider =
    StateNotifierProvider<WorkerListNotifier, List<WorkerModel>>(
  (ref) => WorkerListNotifier(),
);

class WorkerListNotifier extends StateNotifier<List<WorkerModel>> {
  WorkerListNotifier()
      : super([
          WorkerModel(
            name: '박정현',
            age: 31,
            vendor: Vendor.raycom,
            jobType: JobType.programmer,
            isForeigner: false,
          ),
          WorkerModel(
            name: '김민재',
            age: 30,
            vendor: Vendor.naver,
            jobType: JobType.programmer,
            isForeigner: false,
          ),
          WorkerModel(
            name: '손흥민',
            age: 31,
            vendor: Vendor.kakao,
            jobType: JobType.designer,
            isForeigner: false,
          ),
          WorkerModel(
            name: '라따뚜이',
            age: 25,
            vendor: Vendor.raycom,
            jobType: JobType.programmer,
            isForeigner: true,
          ),
          WorkerModel(
            name: '이강인',
            age: 22,
            vendor: Vendor.kakao,
            jobType: JobType.designer,
            isForeigner: false,
          ),
        ]);

  void toggleJobType({required String name}) {
    state = state
        .map((w) => w.name == name
            ? WorkerModel(
                name: w.name,
                age: w.age,
                vendor: w.vendor,
                jobType: w.jobType == JobType.programmer
                    ? JobType.designer
                    : JobType.programmer,
                isForeigner: w.isForeigner,
              )
            : w)
        .toList();
  }
}
