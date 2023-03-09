// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkerPropertyModel _$WorkerPropertyModelFromJson(Map<String, dynamic> json) =>
    WorkerPropertyModel(
      weafinal: (json['weafinal'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      birthDt: json['birthDt'] as String?,
      gender: json['gender'] as String?,
      nation: json['nation'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      bloodType: json['bloodType'] as String?,
      emergencyNumber: json['emergencyNumber'] as String?,
      vendorId: json['vendorId'] as int?,
      jobTypeId: json['jobTypeId'] as String?,
      career: json['career'] as String?,
      beforeWorkPlace: json['beforeWorkPlace'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      fatherYn: json['fatherYn'] as String?,
      motherYn: json['motherYn'] as String?,
      marryYn: json['marryYn'] as String?,
      privateProtectionList: (json['privateProtectionList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      protectionSignatureGrpCode: json['protectionSignatureGrpCode'] as String?,
      privateProtetcionSignature:
          (json['privateProtetcionSignature'] as List<dynamic>?)
              ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      personnelYn: json['personnelYn'] as String?,
      identificationYn: json['identificationYn'] as String?,
      sensitiveYn: json['sensitiveYn'] as String?,
      safeEducationYn: json['safeEducationYn'] as String?,
      safeEducationDt: json['safeEducationDt'] as String?,
      createdDt: json['createdDt'] as String?,
      workerFaceGrpCode: json['workerFaceGrpCode'] as String?,
      workerFace: (json['workerFace'] as List<dynamic>?)
          ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      workerSignatureGrpCode: json['workerSignatureGrpCode'] as String?,
      workerSignature: (json['workerSignature'] as List<dynamic>?)
          ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      educatorSignatureGrpCode: json['educatorSignatureGrpCode'] as String?,
      educatorSignature: (json['educatorSignature'] as List<dynamic>?)
          ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      etcFileGrpCode: json['etcFileGrpCode'] as String?,
      etcFile: (json['etcFile'] as List<dynamic>?)
          ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      educatorCompanyName: json['educatorCompanyName'] as String?,
      workerName: json['workerName'] as String?,
      docNumber: json['docNumber'] as String?,
      mapIcon: json['mapIcon'] as String?,
      mobileNodeId: json['mobileNodeId'] as String?,
      mobileSensorId: json['mobileSensorId'] as int?,
      bloodPressure: json['bloodPressure'] as String?,
      checkDt: json['checkDt'] as String?,
      beforeCheckDt: json['beforeCheckDt'] as String?,
      speCheckDt: json['speCheckDt'] as String?,
      afterSpeCheckDt: json['afterSpeCheckDt'] as String?,
      management: json['management'] as String?,
      bandUserYn: json['bandUserYn'] as String?,
      juminNo: json['juminNo'] as String?,
      minHeartbeat: json['minHeartbeat'] as int?,
      maxHeartbeat: json['maxHeartbeat'] as int?,
      isVehicle: json['isVehicle'] as String?,
      vehicleId: json['vehicleId'] as int?,
      constCd: json['constCd'] as String?,
      constDtCd: json['constDtCd'] as String?,
    );

Map<String, dynamic> _$WorkerPropertyModelToJson(
        WorkerPropertyModel instance) =>
    <String, dynamic>{
      'weafinal': instance.weafinal,
      'name': instance.name,
      'birthDt': instance.birthDt,
      'gender': instance.gender,
      'nation': instance.nation,
      'phoneNumber': instance.phoneNumber,
      'bloodType': instance.bloodType,
      'emergencyNumber': instance.emergencyNumber,
      'vendorId': instance.vendorId,
      'jobTypeId': instance.jobTypeId,
      'career': instance.career,
      'beforeWorkPlace': instance.beforeWorkPlace,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'fatherYn': instance.fatherYn,
      'motherYn': instance.motherYn,
      'marryYn': instance.marryYn,
      'privateProtectionList': instance.privateProtectionList,
      'protectionSignatureGrpCode': instance.protectionSignatureGrpCode,
      'privateProtetcionSignature': instance.privateProtetcionSignature,
      'personnelYn': instance.personnelYn,
      'identificationYn': instance.identificationYn,
      'sensitiveYn': instance.sensitiveYn,
      'safeEducationYn': instance.safeEducationYn,
      'safeEducationDt': instance.safeEducationDt,
      'createdDt': instance.createdDt,
      'workerFaceGrpCode': instance.workerFaceGrpCode,
      'workerFace': instance.workerFace,
      'workerSignatureGrpCode': instance.workerSignatureGrpCode,
      'workerSignature': instance.workerSignature,
      'educatorSignatureGrpCode': instance.educatorSignatureGrpCode,
      'educatorSignature': instance.educatorSignature,
      'etcFileGrpCode': instance.etcFileGrpCode,
      'etcFile': instance.etcFile,
      'educatorCompanyName': instance.educatorCompanyName,
      'workerName': instance.workerName,
      'docNumber': instance.docNumber,
      'mapIcon': instance.mapIcon,
      'mobileNodeId': instance.mobileNodeId,
      'mobileSensorId': instance.mobileSensorId,
      'bloodPressure': instance.bloodPressure,
      'checkDt': instance.checkDt,
      'beforeCheckDt': instance.beforeCheckDt,
      'speCheckDt': instance.speCheckDt,
      'afterSpeCheckDt': instance.afterSpeCheckDt,
      'management': instance.management,
      'bandUserYn': instance.bandUserYn,
      'juminNo': instance.juminNo,
      'minHeartbeat': instance.minHeartbeat,
      'maxHeartbeat': instance.maxHeartbeat,
      'isVehicle': instance.isVehicle,
      'vehicleId': instance.vehicleId,
      'constCd': instance.constCd,
      'constDtCd': instance.constDtCd,
    };
