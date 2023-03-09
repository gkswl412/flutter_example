// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseModel<T> _$ApiResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseModel<T>(
      header: json['header'] == null
          ? null
          : ResponseHeader.fromJson(json['header'] as Map<String, dynamic>),
      body: (json['body'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ApiResponseModelToJson<T>(
  ApiResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'header': instance.header,
      'body': instance.body.map(toJsonT).toList(),
    };

ResponseHeader _$ResponseHeaderFromJson(Map<String, dynamic> json) =>
    ResponseHeader(
      code: json['code'] as int?,
      message: json['message'] as String?,
      krMessage: json['krMessage'] as String?,
      returnValue: json['returnValue'],
    );

Map<String, dynamic> _$ResponseHeaderToJson(ResponseHeader instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'krMessage': instance.krMessage,
      'returnValue': instance.returnValue,
    };
