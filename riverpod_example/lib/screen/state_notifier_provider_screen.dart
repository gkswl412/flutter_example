import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/layout/default_layout.dart';
import 'package:riverpod_example/model/worker_model.dart';
import 'package:riverpod_example/provider/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<WorkerModel> state = ref.watch(stateNotifierProvider);

    return DefaultLayout(
      title: 'StateNotifierProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            ...state
                .map(
                  (e) => CheckboxListTile(
                title: Text(e.name),
                value: e.jobType == JobType.programmer,
                onChanged: (value) {
                  ref.read(stateNotifierProvider.notifier).toggleJobType(name: e.name);
                },
              ),
            )
                .toList(),
            Text('${state.map((e) => e.jobType)}'),
          ],
        ),
      ),
    );
  }
}
