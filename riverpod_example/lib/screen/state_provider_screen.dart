import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/layout/default_layout.dart';
import 'package:riverpod_example/provider/state_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(stateProvider);

    return DefaultLayout(
      title: 'State Provider Screen',
      body: Container(
        color: Colors.white70,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(stateProvider.notifier).update((state) => state + 1);
                },
                child: Text('UP'),
              ),
              Text(ref.read(stateProvider).toString()),
              ElevatedButton(
                onPressed: () {
                  ref.read(stateProvider.notifier).state =
                      ref.read(stateProvider.notifier).state - 2;
                },
                child: Text('Down'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => _NextPage(),
                    ),
                  );
                },
                child: Text('다음 페이지로'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextPage extends ConsumerWidget {
  const _NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(stateProvider);

    return DefaultLayout(
      title: 'Next Page',
      body: Container(
        color: Colors.white70,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(stateProvider.notifier).update((state) => state + 1);
                },
                child: Text('UP'),
              ),
              Text(ref.read(stateProvider).toString()),
              ElevatedButton(
                onPressed: () {
                  ref.read(stateProvider.notifier).state =
                      ref.read(stateProvider.notifier).state - 2;
                },
                child: Text('Down'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
