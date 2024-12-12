import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/routing/router.dart';

import 'main_development.dart' as development;

// デフォルトのエントリーポイントはdevelopment
void main() async {
  development.main();
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
    );
  }
}
