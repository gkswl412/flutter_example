import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:worker_list_example/common/secure_storage/secure_storage.dart';
import 'package:worker_list_example/const/data.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();

  final storage = ref.watch(secureStorageProvider);

  dio.interceptors.add(
    ApiRequestInterCeptor(storage: storage),
  );

  return dio;
});

class ApiRequestInterCeptor extends Interceptor {
  final FlutterSecureStorage storage;

  ApiRequestInterCeptor({
    required this.storage,
  });

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print('[REQ] [${options.method}] ${options.uri}');

    if (options.headers['userToken'] == 'true') {
      options.headers.remove('userToken');
      final token = await storage.read(key: USER_TOKEN_KEY);
      options.headers.addAll({
        'userToken': token,
      });
    }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('[ERR] [${err.requestOptions.method}] ${err.requestOptions.uri}');
    return super.onError(err, handler);
  }
}
