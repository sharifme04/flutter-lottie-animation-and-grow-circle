import 'package:animation_splash/app/AnimatedContainer/provider_hook_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StateUpdateScreen extends HookConsumerWidget {
  const StateUpdateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final countryName = useState('India');
    final backgroundColorChange = useState(Colors.white);

    return Scaffold(
        backgroundColor: backgroundColorChange.value,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(countryName.value),
              ElevatedButton(
                  onPressed: () => backgroundColorChange.value = Colors.red,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('red')),
              ElevatedButton(
                  onPressed: () => backgroundColorChange.value = Colors.white,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('white')),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        //MaterialPageRoute(builder: (context) => const AnimationCircle()),
                        MaterialPageRoute(
                            builder: (context) => const ProviderHookRiverPod()),
                      ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('Go Provider')),
            ],
          ),
        ));
  }
}
