import 'package:json_annotation/json_annotation.dart';

part 'api_response_model.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class ApiResponseModel<T> {
  final ResponseHeader? header;
  final List<T> body;

  ApiResponseModel({
    this.header,
    required this.body,
  });
  
  factory ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT)
  => _$ApiResponseModelFromJson(json, fromJsonT);

  @override
  String toString() {
    return 'ApiResponseModel{header: $header, body: $body}';
  }
}

@JsonSerializable()
class ResponseHeader {
  final int? code;
  final String? message;
  final String? krMessage;
  final Object? returnValue;

  ResponseHeader({
    this.code,
    this.message,
    this.krMessage,
    this.returnValue,
  });
  
  factory ResponseHeader.fromJson(Map<String, dynamic> json,)
  => _$ResponseHeaderFromJson(json);

  @override
  String toString() {
    return 'ResponseHeader{code: $code, message: $message, krMessage: $krMessage, returnValue: $returnValue}';
  }
}