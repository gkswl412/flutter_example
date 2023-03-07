enum Vendor {
  raycom,
  naver,
  kakao,
  all,
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

  WorkerModel copyWith({
    String? name,
    int? age,
    Vendor? vendor,
    JobType? jobType,
    bool? isForeigner,
  }) {
    return WorkerModel(
      name: name ?? this.name,
      age: age ?? this.age,
      vendor: vendor ?? this.vendor,
      jobType: jobType ?? this.jobType,
      isForeigner: isForeigner ?? this.isForeigner,
    );
  }
}
