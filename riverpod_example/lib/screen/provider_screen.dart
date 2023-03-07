import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/layout/default_layout.dart';
import 'package:riverpod_example/model/worker_model.dart';
import 'package:riverpod_example/provider/provider.dart';
import 'package:riverpod_example/provider/select_provider.dart';
import 'package:riverpod_example/provider/state_notifier_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredWorkerListProvider);
    ref.watch(selectProvider);

    return DefaultLayout(
      title: 'ProviderScreen',
      actions: [
        PopupMenuButton<Vendor>(
          itemBuilder: (_) => Vendor.values
              .map(
                (e) => PopupMenuItem(
                  child: Text(e.name),
                  value: e,
                ),
              )
              .toList(),
          onSelected: (value) {
            ref.read(filterProvider.notifier).state = value;
          },
        ),
      ],
      body: ListView(
        children: state
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
      ),
    );
  }
}
