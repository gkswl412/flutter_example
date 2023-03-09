import 'package:json_annotation/json_annotation.dart';
import 'package:worker_list_example/common/model/internal_file_property_model.dart';

part 'file_property_model.g.dart';

@JsonSerializable()
class FilePropertyModel {
  final String? ext;
  final InternalFilePropertyModel? thumb;
  final InternalFilePropertyModel? xxhdpi;

  FilePropertyModel({
    this.ext,
    this.thumb,
    this.xxhdpi,
  });
  
  factory FilePropertyModel.fromJson(Map<String, dynamic> json,)
  => _$FilePropertyModelFromJson(json);
}
