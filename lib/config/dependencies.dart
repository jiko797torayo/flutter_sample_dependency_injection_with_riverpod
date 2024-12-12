import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository_local.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository_remote.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/services/api/api_client.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/data/services/local/local_data_service.dart';

List<Override> get providersRemote {
  return [
    fooRepositoryProvider.overrideWithValue(
      FooRepositoryRemote(
        apiClient: ApiClient(),
      ),
    ),
  ];
}

List<Override> get providersLocal {
  return [
    fooRepositoryProvider.overrideWithValue(
      FooRepositoryLocal(
        localDataService: LocalDataService(),
      ),
    ),
  ];
}
