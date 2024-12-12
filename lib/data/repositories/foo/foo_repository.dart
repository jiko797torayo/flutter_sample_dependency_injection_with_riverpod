import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foo_repository.g.dart';

abstract class FooRepository {
  Future<String> getFoo();
}

@Riverpod(keepAlive: true)
FooRepository fooRepository(Ref ref) {
  throw UnimplementedError();
}
