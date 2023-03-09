import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:worker_list_example/common/dio/dio.dart';
import 'package:worker_list_example/common/model/api_response_model.dart';
import 'package:worker_list_example/const/data.dart';
import 'package:worker_list_example/worker/model/worker_model.dart';

part 'worker_repository.g.dart';

final workerRepositoryProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  final repository = WorkerRepository(dio, baseUrl: '$ip/external/api/v1.5');
  return repository;
});

@RestApi()
abstract class WorkerRepository {
  factory WorkerRepository(Dio dio, {String baseUrl})
    = _WorkerRepository;

  // http://$ip/worker/list
  @POST('/worker/list')
  @Headers({
    'userToken': 'true'
  })
  Future<ApiResponseModel<WorkerModel>> getWorker(@Body() Map<String, dynamic> map);
}