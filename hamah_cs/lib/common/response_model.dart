import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class ResponseModel<T>{
  final Map<String, dynamic> header;
  final T body;

  ResponseModel({
    required this.header,
    required this.body,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT)
  => _$ResponseModelFromJson(json, fromJsonT);
}