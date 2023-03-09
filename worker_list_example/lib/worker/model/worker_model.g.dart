// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkerModel _$WorkerModelFromJson(Map<String, dynamic> json) => WorkerModel(
      id: json['id'] as int?,
      name: WorkerModel.namePrefix(json['name'] as String),
      siteId: json['siteId'] as int?,
      siteName: json['siteName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      useFlag: json['useFlag'] as String?,
      tag: json['tag'] as String?,
      pin: json['pin'] as String?,
      birthDt: json['birthDt'] as String?,
      age: json['age'] as String?,
      writerId: json['writerId'] as String?,
      createdDt: json['createdDt'] as String?,
      updatedDt: json['updatedDt'] as String?,
      vendorId: json['vendorId'] as int?,
      vendorName: json['vendorName'] as String?,
      jobTypeId: json['jobTypeId'] as String?,
      jobTypeName: json['jobTypeName'] as String?,
      qrCode: json['qrCode'] as String?,
      property: json['property'] == null
          ? null
          : WorkerPropertyModel.fromJson(
              json['property'] as Map<String, dynamic>),
      mappingFlag: json['mappingFlag'] as String?,
      weakType: json['weakType'] as String?,
      mapIcon: json['mapIcon'] as String?,
      sensorId: json['sensorId'] as int?,
      nodeId: json['nodeId'] as String?,
      sensorName: json['sensorName'] as String?,
      sensorUseFlag: json['sensorUseFlag'] as String?,
      deleted: json['deleted'] as String?,
      leaderYn: json['leaderYn'] as String?,
      temperature: json['temperature'] as String?,
      medicalCount: json['medicalCount'] as String?,
      juminNo: json['juminNo'] as String?,
      userToken: json['userToken'] as String?,
      lastAttendDt: json['lastAttendDt'] as String?,
      gpsGatheringAgree: json['gpsGatheringAgree'] as String?,
      constNm: json['constNm'] as String?,
      upperConstNm: json['upperConstNm'] as String?,
      attcode: (json['attcode'] as List<dynamic>?)
          ?.map((e) => WorkerAttCode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkerModelToJson(WorkerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'siteId': instance.siteId,
      'siteName': instance.siteName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'useFlag': instance.useFlag,
      'tag': instance.tag,
      'pin': instance.pin,
      'birthDt': instance.birthDt,
      'age': instance.age,
      'writerId': instance.writerId,
      'createdDt': instance.createdDt,
      'updatedDt': instance.updatedDt,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'jobTypeId': instance.jobTypeId,
      'jobTypeName': instance.jobTypeName,
      'qrCode': instance.qrCode,
      'property': instance.property,
      'mappingFlag': instance.mappingFlag,
      'weakType': instance.weakType,
      'mapIcon': instance.mapIcon,
      'sensorId': instance.sensorId,
      'nodeId': instance.nodeId,
      'sensorName': instance.sensorName,
      'sensorUseFlag': instance.sensorUseFlag,
      'deleted': instance.deleted,
      'leaderYn': instance.leaderYn,
      'temperature': instance.temperature,
      'medicalCount': instance.medicalCount,
      'juminNo': instance.juminNo,
      'userToken': instance.userToken,
      'lastAttendDt': instance.lastAttendDt,
      'gpsGatheringAgree': instance.gpsGatheringAgree,
      'constNm': instance.constNm,
      'upperConstNm': instance.upperConstNm,
      'attcode': instance.attcode,
    };

WorkerAttCode _$WorkerAttCodeFromJson(Map<String, dynamic> json) =>
    WorkerAttCode(
      code: json['code'] as String?,
      grpCd: json['grpCd'] as String?,
    );

Map<String, dynamic> _$WorkerAttCodeToJson(WorkerAttCode instance) =>
    <String, dynamic>{
      'code': instance.code,
      'grpCd': instance.grpCd,
    };
