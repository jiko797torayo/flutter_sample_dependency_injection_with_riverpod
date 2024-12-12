import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/services/api/api_client.dart';

class FooRepositoryRemote implements FooRepository {
  FooRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<String> getFoo() async {
    final foo = _apiClient.getFoo();
    return foo;
  }
}
