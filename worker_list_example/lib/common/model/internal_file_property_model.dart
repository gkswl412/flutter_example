import 'package:json_annotation/json_annotation.dart';

part 'internal_file_property_model.g.dart';

@JsonSerializable()
class InternalFilePropertyModel {
  final String? attFileNm;
  final int? attFileSiz;

  InternalFilePropertyModel({
    this.attFileNm,
    this.attFileSiz,
  });

  factory InternalFilePropertyModel.fromJson(Map<String, dynamic> json,)
  => _$InternalFilePropertyModelFromJson(json);
}
