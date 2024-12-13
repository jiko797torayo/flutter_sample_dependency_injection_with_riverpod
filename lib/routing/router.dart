import 'package:flutter_sample_dependency_injection_with_riverpod/data/repositories/foo/foo_repository.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/routing/routes.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/ui/foo/view_models/foo_viewmodel.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/ui/foo/widgets/foo_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: Routes.foo,
    routes: [
      GoRoute(
        path: Routes.foo,
        builder: (context, state) {
          return Consumer(
            builder: (context, ref, child) {
              return FooScreen(
                viewModel: FooViewModel(
                  ref: ref,
                  fooRepository: ref.read(fooRepositoryProvider),
                ),
              );
            },
          );
        },
      ),
    ],
  );
}
