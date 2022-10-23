import 'package:animation_splash/app/Provider/riverpod_proiver.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProviderHookRiverPod extends HookConsumerWidget {
  const ProviderHookRiverPod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final String value = ref.watch(helloWorldProvider);
    final String value2 = ref.watch(secondProvider);
    final counter = ref.watch(counterProvider);

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(value),
            Text(value2),
            Text(counter.toString()),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.state).state += 1,
              child: const Text('counterProvider'),
            ),
            ElevatedButton(
              onPressed: () =>
                  ref.read(secondProvider.state).state = "Chittagong",
              child: const Text('secondProvider'),
            ),
            ElevatedButton(
              onPressed: () =>
                  ref.read(helloWorldProvider.state).state = "GoodBye",
              child: const Text('helloWorldProvider'),
            )
          ],
        ),
      ),
    );
  }
}
