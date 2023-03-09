import 'package:json_annotation/json_annotation.dart';
import 'package:worker_list_example/common/model/attach_file_model.dart';

part 'worker_property_model.g.dart';

@JsonSerializable()
class WorkerPropertyModel {
  final List<String>? weafinal;
  final String? name;
  final String? birthDt;
  final String? gender;
  final String? nation;
  final String? phoneNumber;
  final String? bloodType;
  final String? emergencyNumber;
  final int? vendorId;
  final String? jobTypeId;
  final String? career;
  final String? beforeWorkPlace;
  final String? address1, address2, address3;
  final String? fatherYn;
  final String? motherYn;
  final String? marryYn;

  final List<String>? privateProtectionList;
  final String? protectionSignatureGrpCode;
  final List<AttachFileModel>? privateProtetcionSignature;

  final String? personnelYn;
  final String? identificationYn;
  final String? sensitiveYn;
  final String? safeEducationYn;
  final String? safeEducationDt;
  final String? createdDt;

  //public String image_picture_url;
  final String? workerFaceGrpCode;
  final List<AttachFileModel>? workerFace;
  final String? workerSignatureGrpCode;
  final List<AttachFileModel>? workerSignature;
  final String? educatorSignatureGrpCode;
  final List<AttachFileModel>? educatorSignature;

  final String? etcFileGrpCode;
  final List<AttachFileModel>? etcFile;

  final String? educatorCompanyName;
  final String? workerName;

  final String? docNumber;

  final String? mapIcon;

  final String? mobileNodeId;
  final int? mobileSensorId;

  final String? bloodPressure; //혈압
  final String? checkDt; //일반건강검진
  final String? beforeCheckDt; // 배치전 건강검진
  final String? speCheckDt; // 특수 검진일
  final String? afterSpeCheckDt; // 차후 특수 검진일
  final String? management; // 사후 관리

  final String? bandUserYn; // 밴드 사용자 여부 2020-10-13 추가
  final String? juminNo;
  final int? minHeartbeat;
  final int? maxHeartbeat;

  final String? isVehicle; // 이동장비 여부
  final int? vehicleId; // 이동장비 아이디

  //2022.10.17 jh.park 작업자 공종 맵핑 컬럼 추가
  final String? constCd;
  final String? constDtCd;

  WorkerPropertyModel({
    this.weafinal,
    this.name,
    this.birthDt,
    this.gender,
    this.nation,
    this.phoneNumber,
    this.bloodType,
    this.emergencyNumber,
    this.vendorId,
    this.jobTypeId,
    this.career,
    this.beforeWorkPlace,
    this.address1,
    this.address2,
    this.address3,
    this.fatherYn,
    this.motherYn,
    this.marryYn,
    this.privateProtectionList,
    this.protectionSignatureGrpCode,
    this.privateProtetcionSignature,
    this.personnelYn,
    this.identificationYn,
    this.sensitiveYn,
    this.safeEducationYn,
    this.safeEducationDt,
    this.createdDt,
    this.workerFaceGrpCode,
    this.workerFace,
    this.workerSignatureGrpCode,
    this.workerSignature,
    this.educatorSignatureGrpCode,
    this.educatorSignature,
    this.etcFileGrpCode,
    this.etcFile,
    this.educatorCompanyName,
    this.workerName,
    this.docNumber,
    this.mapIcon,
    this.mobileNodeId,
    this.mobileSensorId,
    this.bloodPressure,
    this.checkDt,
    this.beforeCheckDt,
    this.speCheckDt,
    this.afterSpeCheckDt,
    this.management,
    this.bandUserYn,
    this.juminNo,
    this.minHeartbeat,
    this.maxHeartbeat,
    this.isVehicle,
    this.vehicleId,
    this.constCd,
    this.constDtCd,
  });

  factory WorkerPropertyModel.fromJson(Map<String, dynamic> json,)
  => _$WorkerPropertyModelFromJson(json);
  // factory WorkerPropertyModel.fromJson({
  //   required Map<String, dynamic> json,
  // }){
  //   return WorkerPropertyModel(
  //     weafinal: json['weafinal'] ?? <String>[],
  //     name: json['name'] ?? '',
  //     birthDt: json['birthDt'] ?? '',
  //     gender: json['gender'] ?? '',
  //     nation: json['nation'] ?? '',
  //     phoneNumber: json['phoneNumber'] ?? '',
  //     bloodType: json['bloodType'] ?? '',
  //     emergencyNumber: json['emergencyNumber'] ?? '',
  //     vendorId: json['vendorId'] ?? 0,
  //     jobTypeId: json['jobTypeId'] ?? '',
  //     career: json['career'] ?? '',
  //     beforeWorkPlace: json['beforeWorkPlace'] ?? '',
  //     address1: json['address1'] ?? '',
  //     address2: json['address2'] ?? '',
  //     address3: json['address3'] ?? '',
  //     fatherYn: json['fatherYn'] ?? '',
  //     motherYn: json['motherYn'] ?? '',
  //     marryYn: json['marryYn'] ?? '',
  //     privateProtectionList: json['privateProtectionList'] ?? <String>[],
  //     protectionSignatureGrpCode: json['protectionSignatureGrpCode'] ?? '',
  //     privateProtetcionSignature: json['privateProtetcionSignature'] ?? <AttachFileModel>[],
  //     personnelYn: json['personnelYn'] ?? '',
  //     identificationYn: json['identificationYn'] ?? '',
  //     sensitiveYn: json['sensitiveYn'] ?? '',
  //     safeEducationYn: json['safeEducationYn'] ?? '',
  //     safeEducationDt: json['safeEducationDt'] ?? '',
  //     createdDt: json['createdDt'] ?? '',
  //     workerFaceGrpCode: json['workerFaceGrpCode'] ?? '',
  //     workerFace: json['workerFace'] ?? <AttachFileModel>[],
  //     workerSignatureGrpCode: json['workerSignatureGrpCode'] ?? '',
  //     workerSignature: json['workerSignature'] ?? <AttachFileModel>[],
  //     educatorSignatureGrpCode: json['educatorSignatureGrpCode'] ?? '',
  //     educatorSignature: json['educatorSignature'] ?? <AttachFileModel>[],
  //     etcFileGrpCode: json['etcFileGrpCode'] ?? '',
  //     etcFile: json['etcFile'] ?? <AttachFileModel>[],
  //     educatorCompanyName: json['educatorCompanyName'] ?? '',
  //     workerName: json['workerName'] ?? '',
  //     docNumber: json['docNumber'] ?? '',
  //     mapIcon: json['mapIcon'] ?? '',
  //     mobileNodeId: json['mobileNodeId'] ?? '',
  //     mobileSensorId: json['mobileSensorId'] ?? 0,
  //     bloodPressure: json['bloodPressure'] ?? '',
  //     checkDt: json['checkDt'] ?? '',
  //     beforeCheckDt: json['beforeCheckDt'] ?? '',
  //     speCheckDt: json['speCheckDt'] ?? '',
  //     afterSpeCheckDt: json['afterSpeCheckDt'] ?? '',
  //     management: json['management'] ?? '',
  //     bandUserYn: json['bandUserYn'] ?? '',
  //     juminNo: json['juminNo'] ?? '',
  //     minHeartbeat: json['minHeartbeat'] ?? 0,
  //     maxHeartbeat: json['maxHeartbeat'] ?? 0,
  //     isVehicle: json['isVehicle'] ?? '',
  //     vehicleId: json['vehicleId'] ?? 0,
  //     constCd: json['constCd'] ?? '',
  //     constDtCd: json['constDtCd'] ?? '',
  //   );
  // }
}
