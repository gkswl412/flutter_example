import 'package:json_annotation/json_annotation.dart';

part 'coordinate_model.g.dart';

@JsonSerializable()
class CoordinateModel {
  final double lat;
  final double lon;

  CoordinateModel({
    required this.lat,
    required this.lon,
  });

  factory CoordinateModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CoordinateModelFromJson(json);
}

@JsonSerializable()
class DrivingRestrictCoordinateModel extends CoordinateModel {
  final int radius;

  DrivingRestrictCoordinateModel({
    required super.lat,
    required super.lon,
    required this.radius,
  });
  
  factory DrivingRestrictCoordinateModel.fromJson(Map<String, dynamic> json,)
  => _$DrivingRestrictCoordinateModelFromJson(json);
}
