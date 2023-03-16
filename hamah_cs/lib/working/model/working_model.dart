import 'package:hamah_cs/common/model/coordinate_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'working_model.g.dart';

@JsonSerializable()
class WorkingModel {
  final bool isWorking;
  final int workingTime;
  final int stepCount;
  final CoordinateModel currentLocation;

  WorkingModel({
    required this.isWorking,
    required this.workingTime,
    required this.stepCount,
    required this.currentLocation,
  });

  factory WorkingModel.fromJson(Map<String, dynamic> json,)
  => _$WorkingModelFromJson(json);
}
