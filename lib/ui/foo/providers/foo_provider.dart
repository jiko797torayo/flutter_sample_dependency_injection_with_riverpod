import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foo_provider.g.dart';

@riverpod
class FooNotifier extends _$FooNotifier {
  @override
  String build() => 'Hello World!';

  void update(String word) {
    state = word;
  }
}
