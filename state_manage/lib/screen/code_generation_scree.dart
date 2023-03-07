import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/layout/default_layout.dart';
import 'package:state_manage/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build!');

    final state = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(GStateMultiplyProvider(number1: 100, number2: 2));

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state),
            state2.when(
              data: (data) => Text(
                data.toString(),
              ),
              error: (err, stack) => Text(
                err.toString(),
              ),
              loading: () => CircularProgressIndicator(),
            ),
            state3.when(
              data: (data) => Text(
                data.toString(),
              ),
              error: (err, stack) => Text(
                err.toString(),
              ),
              loading: () => CircularProgressIndicator(),
            ),
            Text(state4.toString()),
            Consumer(
              builder: (context, ref, child) {
                print('builder build');
                final state5 = ref.watch(gStateNotifierProvider);

                return Row(
                  children: [
                    Text(
                      state5.toString(),
                    ),
                    if(child != null) child ,
                  ],
                );
              },
              child: Text('hello'),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(gStateNotifierProvider.notifier).increment();
                  },
                  child: Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(gStateNotifierProvider.notifier).decrement();
                  },
                  child: Text('Decrement'),
                ),
              ],
            ),
            // invalidate()
            // 유효하지 않게 하다
            ElevatedButton(
              onPressed: () {
                ref.invalidate(gStateNotifierProvider);
              },
              child: Text('Invalidate'),
            ),
          ],
        ),
      ),
    );
  }
}
