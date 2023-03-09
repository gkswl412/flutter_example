import 'package:json_annotation/json_annotation.dart';
import 'package:worker_list_example/worker/model/worker_property_model.dart';

part 'worker_model.g.dart';

@JsonSerializable()
class WorkerModel {
  final int? id;
  @JsonKey(
    fromJson: namePrefix,
  )
  final String? name;
  final int? siteId;
  final String? siteName;
  final String? phoneNumber;
  final String? email;
  final String? useFlag;
  final String? tag;
  final String? pin;
  final String? birthDt;
  final String? age;
  final String? writerId;
  final String? createdDt;
  final String? updatedDt;
  final int? vendorId;
  final String? vendorName;
  final String? jobTypeId;
  final String? jobTypeName;
  final String? qrCode;
  final WorkerPropertyModel? property;
  final String? mappingFlag;
  final String? weakType;
  final String? mapIcon;
  final int? sensorId;
  final String? nodeId;
  final String? sensorName;
  final String? sensorUseFlag;
  final String? deleted;
  final String? leaderYn;
  final String? temperature;
  final String? medicalCount;
  final String? juminNo;
  final String? userToken;
  final String? lastAttendDt;
  final String? gpsGatheringAgree;
  final String? constNm;
  final String? upperConstNm;
  final List<WorkerAttCode>? attcode;

  WorkerModel({
    this.id,
    this.name,
    this.siteId,
    this.siteName,
    this.phoneNumber,
    this.email,
    this.useFlag,
    this.tag,
    this.pin,
    this.birthDt,
    this.age,
    this.writerId,
    this.createdDt,
    this.updatedDt,
    this.vendorId,
    this.vendorName,
    this.jobTypeId,
    this.jobTypeName,
    this.qrCode,
    this.property,
    this.mappingFlag,
    this.weakType,
    this.mapIcon,
    this.sensorId,
    this.nodeId,
    this.sensorName,
    this.sensorUseFlag,
    this.deleted,
    this.leaderYn,
    this.temperature,
    this.medicalCount,
    this.juminNo,
    this.userToken,
    this.lastAttendDt,
    this.gpsGatheringAgree,
    this.constNm,
    this.upperConstNm,
    this.attcode,
  });

  // json -> instance
  factory WorkerModel.fromJson(Map<String,dynamic> json)
  => _$WorkerModelFromJson(json);

  // instance -> json
  Map<String, dynamic> toJson() => _$WorkerModelToJson(this);

  static String namePrefix(String value) {
    return '작업자 $value';
  }

  // factory WorkerModel.fromJson({
  //   required Map<String, dynamic> json,
  // }){
  //   return WorkerModel(
  //     id: json['id'] ?? 0,
  //     name: json['name'] ?? '',
  //     siteId: json['siteId'] ?? 0,
  //     siteName: json['siteName'] ?? '',
  //     phoneNumber: json['phoneNumber'] ?? '',
  //     email: json['email'] ?? '',
  //     useFlag: json['useFlag'] ?? '',
  //     tag: json['tag'] ?? '',
  //     pin: json['pin'] ?? '',
  //     birthDt: json['birthDt'] ?? '',
  //     age: json['age'] ?? '',
  //     writerId: json['writerId'] ?? '',
  //     createdDt: json['createdDt'] ?? '',
  //     updatedDt: json['updatedDt'] ?? '',
  //     vendorId: json['vendorId'] ?? 0,
  //     vendorName: json['vendorName'] ?? '',
  //     jobTypeId: json['jobTypeId'] ?? '',
  //     jobTypeName: json['jobTypeName'] ?? '',
  //     qrCode: json['qrCode'] ?? '',
  //     property: WorkerPropertyModel.fromJson(json: json['property']) ?? WorkerPropertyModel(),
  //     mappingFlag: json['mappingFlag'] ?? '',
  //     weakType: json['weakType'] ?? '',
  //     mapIcon: json['mapIcon'] ?? '',
  //     sensorId: json['sensorId'] ?? 0,
  //     nodeId: json['nodeId'] ?? '',
  //     sensorName: json['sensorName'] ?? '',
  //     sensorUseFlag: json['sensorUseFlag'] ?? '',
  //     deleted: json['deleted'] ?? '',
  //     leaderYn: json['leaderYn'] ?? '',
  //     temperature: json['temperature'] ?? '',
  //     medicalCount: json['medicalCount'] ?? '',
  //     juminNo: json['juminNo'] ?? '',
  //     userToken: json['userToken'] ?? '',
  //     lastAttendDt: json['lastAttendDt'] ?? '',
  //     gpsGatheringAgree: json['gpsGatheringAgree'] ?? '',
  //     constNm: json['constNm'] ?? '',
  //     upperConstNm: json['upperConstNm'] ?? '',
  //     attcode: json['attcode'] ?? <WorkerAttCode>[],
  //   );
  // }
}

@JsonSerializable()
class WorkerAttCode {
  final String? code;
  final String? grpCd;

  WorkerAttCode({
    this.code,
    this.grpCd,
  });
  
  factory WorkerAttCode.fromJson(Map<String, dynamic> json,)
  => _$WorkerAttCodeFromJson(json);

  // factory WorkerAttCode.fromJson({
  //   required Map<String, dynamic> json,
  // }){
  //   return WorkerAttCode(
  //     code: json['code'],
  //     grpCd: json['grpCd'],
  //   );
  // }
}