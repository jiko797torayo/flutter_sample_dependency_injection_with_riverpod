import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/config/dependencies.dart';
import 'package:flutter_sample_dependency_injection_with_riverpod/main.dart';

void main() async {
  runApp(
    ProviderScope(
      overrides: providersRemote,
      child: const MainApp(),
    ),
  );
}
