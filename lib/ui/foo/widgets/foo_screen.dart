import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/ui/foo/providers/foo_provider.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/ui/foo/view_models/foo_viewmodel.dart';

class FooScreen extends ConsumerWidget {
  const FooScreen({super.key, required this.viewModel});

  final FooViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ref.watch(fooNotifierProvider),
              ),
              ElevatedButton(
                child: const Text('Get Foo'),
                onPressed: () => viewModel.getFoo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
