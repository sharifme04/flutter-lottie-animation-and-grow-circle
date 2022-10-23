import 'package:hooks_riverpod/hooks_riverpod.dart';

final helloWorldProvider = StateProvider((ref) => 'Hello');
final secondProvider = StateProvider((ref) => 'dhaka');

final counterProvider = StateProvider((ref) => 0);
