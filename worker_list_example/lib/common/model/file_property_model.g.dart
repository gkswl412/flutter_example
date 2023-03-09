// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilePropertyModel _$FilePropertyModelFromJson(Map<String, dynamic> json) =>
    FilePropertyModel(
      ext: json['ext'] as String?,
      thumb: json['thumb'] == null
          ? null
          : InternalFilePropertyModel.fromJson(
              json['thumb'] as Map<String, dynamic>),
      xxhdpi: json['xxhdpi'] == null
          ? null
          : InternalFilePropertyModel.fromJson(
              json['xxhdpi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FilePropertyModelToJson(FilePropertyModel instance) =>
    <String, dynamic>{
      'ext': instance.ext,
      'thumb': instance.thumb,
      'xxhdpi': instance.xxhdpi,
    };
