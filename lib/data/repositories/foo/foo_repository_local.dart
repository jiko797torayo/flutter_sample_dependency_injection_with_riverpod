import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/services/local/local_data_service.dart';

class FooRepositoryLocal implements FooRepository {
  FooRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<String> getFoo() async {
    final foo = _localDataService.getFoo();
    return foo;
  }
}
