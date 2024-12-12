import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/ui/foo/providers/foo_provider.dart';

class FooViewModel {
  FooViewModel({
    required this.ref,
    required this.fooRepository,
  }) : _fooNotifier = ref.read(fooNotifierProvider.notifier);

  final WidgetRef ref;
  final FooRepository fooRepository;
  final FooNotifier _fooNotifier;

  Future<void> getFoo() async {
    final String result = await fooRepository.getFoo();
    _fooNotifier.update(result);
  }
}
