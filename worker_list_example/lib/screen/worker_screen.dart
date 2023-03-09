import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worker_list_example/common/dio/dio.dart';
import 'package:worker_list_example/common/model/api_response_model.dart';
import 'package:worker_list_example/common/secure_storage/secure_storage.dart';
import 'package:worker_list_example/const/data.dart';
import 'package:worker_list_example/layout/default_layout.dart';
import 'package:worker_list_example/worker/component/worker_card.dart';
import 'package:worker_list_example/worker/model/worker_model.dart';
import 'package:worker_list_example/worker/provider/worker_provider.dart';
import 'package:worker_list_example/worker/repository/worker_repository.dart';

class WorkerScreen extends ConsumerWidget {
  const WorkerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(workerProvider);

    if (data.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return DefaultLayout(
      title: '작업자 목록',
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: data.length,
          itemBuilder: (_, index) {
            final item = data[index];

            return WorkerCard.fromModel(model: item);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 16.0,
            );
          },
        ),
      ),
    );
  }
}
