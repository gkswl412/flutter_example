import 'package:json_annotation/json_annotation.dart';
import 'package:worker_list_example/common/model/file_property_model.dart';

part 'attach_file_model.g.dart';

@JsonSerializable()
class AttachFileModel {
  final String? sysId;
  final String? attId;
  final String? grpCd;
  final String? orgnFileNm;
  final String? attFileNm;
  final String? attFilePath;
  final int? attFileSiz;
  final int? sortOrder;
  final String? sts;
  final String? regId;
  final String? regDt;
  final String? modId;
  final String? modDt;

  final FilePropertyModel? property;

  /*
	 2022.11.11 첨부파일 추가 화면에 필요한 필드 추가
	 */
  final String? siteId;
  final String? workerId;
  final String? attGrpCd;
  final String? dtlCdAttrVal;
  final int? attCnt;
  final String? dtlCdNm;
  final String? dtlCd;

  AttachFileModel({
    this.sysId,
    this.attId,
    this.grpCd,
    this.orgnFileNm,
    this.attFileNm,
    this.attFilePath,
    this.attFileSiz,
    this.sortOrder,
    this.sts,
    this.regId,
    this.regDt,
    this.modId,
    this.modDt,
    this.property,
    this.siteId,
    this.workerId,
    this.attGrpCd,
    this.dtlCdAttrVal,
    this.attCnt,
    this.dtlCdNm,
    this.dtlCd,
  });

  factory AttachFileModel.fromJson(Map<String, dynamic> json,)
  => _$AttachFileModelFromJson(json);
}
