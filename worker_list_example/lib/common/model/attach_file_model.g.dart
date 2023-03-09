// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachFileModel _$AttachFileModelFromJson(Map<String, dynamic> json) =>
    AttachFileModel(
      sysId: json['sysId'] as String?,
      attId: json['attId'] as String?,
      grpCd: json['grpCd'] as String?,
      orgnFileNm: json['orgnFileNm'] as String?,
      attFileNm: json['attFileNm'] as String?,
      attFilePath: json['attFilePath'] as String?,
      attFileSiz: json['attFileSiz'] as int?,
      sortOrder: json['sortOrder'] as int?,
      sts: json['sts'] as String?,
      regId: json['regId'] as String?,
      regDt: json['regDt'] as String?,
      modId: json['modId'] as String?,
      modDt: json['modDt'] as String?,
      property: json['property'] == null
          ? null
          : FilePropertyModel.fromJson(
              json['property'] as Map<String, dynamic>),
      siteId: json['siteId'] as String?,
      workerId: json['workerId'] as String?,
      attGrpCd: json['attGrpCd'] as String?,
      dtlCdAttrVal: json['dtlCdAttrVal'] as String?,
      attCnt: json['attCnt'] as int?,
      dtlCdNm: json['dtlCdNm'] as String?,
      dtlCd: json['dtlCd'] as String?,
    );

Map<String, dynamic> _$AttachFileModelToJson(AttachFileModel instance) =>
    <String, dynamic>{
      'sysId': instance.sysId,
      'attId': instance.attId,
      'grpCd': instance.grpCd,
      'orgnFileNm': instance.orgnFileNm,
      'attFileNm': instance.attFileNm,
      'attFilePath': instance.attFilePath,
      'attFileSiz': instance.attFileSiz,
      'sortOrder': instance.sortOrder,
      'sts': instance.sts,
      'regId': instance.regId,
      'regDt': instance.regDt,
      'modId': instance.modId,
      'modDt': instance.modDt,
      'property': instance.property,
      'siteId': instance.siteId,
      'workerId': instance.workerId,
      'attGrpCd': instance.attGrpCd,
      'dtlCdAttrVal': instance.dtlCdAttrVal,
      'attCnt': instance.attCnt,
      'dtlCdNm': instance.dtlCdNm,
      'dtlCd': instance.dtlCd,
    };
