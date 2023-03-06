enum Vendor {
  raycom,
  naver,
  kakao,
}

enum JobType {
  programmer,
  designer,
}

class WorkerModel {
  final String name;
  final int age;
  final Vendor vendor;
  final JobType jobType;
  final bool isForeigner;

  WorkerModel({
    required this.name,
    required this.age,
    required this.vendor,
    required this.jobType,
    required this.isForeigner,
  });
}
