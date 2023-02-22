import 'package:dio/dio.dart';

import '../const/data.dart';
import '../model/stat_model.dart';

class StatRepository {
  static Future<List<StatModel>> fetchData({
  required ItemCode itemCode,
  }) async {
    final response = await Dio().get(
      'http://apis.data.go.kr/B552584/ArpltnStatsSvc/getCtprvnMesureLIst',
      queryParameters: {
        'serviceKey': serviceKey,
        'itemCode': itemCode.name,
        'dataGubun': 'HOUR',
        'returnType': 'json',
        'numOfRows': 30,
        'pageNo': 1,
        'searchCondition': 'WEEK',
      },
    );

    return response.data['response']['body']['items'].map<StatModel>(
      (item) => StatModel.fromJson(json: item),
    ).toList();
  }
}