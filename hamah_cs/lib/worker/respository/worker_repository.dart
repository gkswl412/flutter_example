import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/cupertino.dart';
import 'package:hamah_cs/common/response_model.dart';
import 'package:hamah_cs/worker/model/worker_model.dart';
import 'package:retrofit/http.dart';

part 'worker_repository.g.dart';

@RestApi()
abstract class WorkerRepository {
  factory WorkerRepository(Dio dio, {String baseUrl})
  = _WorkerRepository;

  @override
  @POST('/mobile/if/check/sitecd')
  @Headers({
    'userToken': 'false',
  })
  Future checkSiteCode({
    @Body() required String siteCode,
  });

  @override
  @POST('vendor/list')
  @Headers({
    'userToken': 'false',
  })
  Future<VendorModel> selectVendorList({
    @Body() required String siteCode,
  });

  @override
  @POST('worker/jobtype/list')
  @Headers({
    'userToken': 'false',
  })
  Future<JobTypeModel> selectJobTypeList({
    @Body() required String siteCode,
  });

  @override
  @POST('mobile/if/sensor/upsert')
  @Headers({
    'userToken': 'false',
  })
  Future sensorUpsert({
    @Body() required String siteCode,
  });

  @override
  @POST('worker/upsert/array')
  @Headers({
    'userToken': 'false',
  })
  Future workerUpsert({
    @Body() required String siteCode,
  });

  @override
  @POST('mobile/if/worker/login/ver2')
  @Headers({
    'userToken': 'false',
  })
  Future workerLogin({
    @Body() required String siteCode,
  });
}