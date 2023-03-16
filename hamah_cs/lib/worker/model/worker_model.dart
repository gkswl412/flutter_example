import 'package:json_annotation/json_annotation.dart';

part 'worker_model.g.dart';

@JsonSerializable()
class WorkerModel {
  final String fcmToken;
  final int? id;
  final int? siteId;
  final String siteName;
  final String name;
  final String juminNumber1;
  final String juminNumber2;
  final String phoneNumber1;
  final String phoneNumber2;
  final String phoneNumber3;
  final String vendorId;
  final String jobTypeId;
  final bool personalAgree;
  final bool locationAgree;
  final String nodeId;
  final String phoneNumber;
  final String leaderFlag;
  final String approvalFlag;
  final String juminNo;
  final String sensorId;
  final String leaderYn;
  final String type;
  final String gpsGatheringAgree;

  WorkerModel({
    this.id,
    this.siteId,
    required this.fcmToken,
    required this.siteName,
    required this.name,
    required this.juminNumber1,
    required this.juminNumber2,
    required this.phoneNumber1,
    required this.phoneNumber2,
    required this.phoneNumber3,
    required this.vendorId,
    required this.jobTypeId,
    required this.personalAgree,
    required this.locationAgree,
    required this.nodeId,
    required this.phoneNumber,
    required this.leaderFlag,
    required this.approvalFlag,
    required this.juminNo,
    required this.sensorId,
    required this.leaderYn,
    required this.type,
    required this.gpsGatheringAgree,
  });

  factory WorkerModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WorkerModelFromJson(json);
}

@JsonSerializable()
class JobTypeModel {
  final String id;
  final String jobTypeName;
  final int siteId;
  final String displayFlag;
  final String useFlag;
  final int sortOrder;

  JobTypeModel({
    required this.id,
    required this.jobTypeName,
    required this.siteId,
    required this.displayFlag,
    required this.useFlag,
    required this.sortOrder,
  });

  factory JobTypeModel.fromJson(Map<String, dynamic> json,)
  => _$JobTypeModelFromJson(json);
}

@JsonSerializable()
class VendorModel {
  final int id;
  final String name;
  final int siteId;
  final String ceo;
  final String serialNumber;
  final String manager;
  final String managerNumber;
  final String useFlag;
  final String createdDt;
  final String updatedDt;

  VendorModel({
    required this.id,
    required this.name,
    required this.siteId,
    required this.ceo,
    required this.serialNumber,
    required this.manager,
    required this.managerNumber,
    required this.useFlag,
    required this.createdDt,
    required this.updatedDt,
  });

  factory VendorModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VendorModelFromJson(json);
}

@JsonSerializable()
class SiteModel {

}

@JsonSerializable()
class DriverModel extends WorkerModel {
  final String carNumber;

  DriverModel({
    required this.carNumber,
    super.id,
    super.siteId,
    required super.fcmToken,
    required super.siteName,
    required super.name,
    required super.juminNumber1,
    required super.juminNumber2,
    required super.phoneNumber1,
    required super.phoneNumber2,
    required super.phoneNumber3,
    required super.vendorId,
    required super.jobTypeId,
    required super.personalAgree,
    required super.locationAgree,
    required super.nodeId,
    required super.phoneNumber,
    required super.leaderFlag,
    required super.approvalFlag,
    required super.juminNo,
    required super.sensorId,
    required super.leaderYn,
    required super.type,
    required super.gpsGatheringAgree,
  });

  factory DriverModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DriverModelFromJson(json);
}
