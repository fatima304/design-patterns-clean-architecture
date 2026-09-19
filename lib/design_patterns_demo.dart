// ignore_for_file: avoid_print

import 'package:design_patterns_clean_architecture/builder/builder_client.dart';
import 'package:design_patterns_clean_architecture/factory/factory_client.dart';
import 'package:design_patterns_clean_architecture/singleton/singleton_client.dart';
import 'package:design_patterns_clean_architecture/solid/solid_client.dart';

// Console demonstrations entry point for Phases 1-4
// Run this file to see all design pattern console outputs for screenshots
void main() {
  print('=== Design Patterns Console Demonstrations ===\n');

  // Phase 1: Builder Pattern
  print('--- Phase 1: Builder Pattern ---');
  final userClient = UserClient();
  userClient.buildUser();
  print('');

  // Phase 2: Factory Pattern
  print('--- Phase 2: Factory Pattern ---');
  final shapeClient = ShapeClient();
  shapeClient.showShapes();
  print('');

  // Phase 3: Singleton Pattern
  print('--- Phase 3: Singleton Pattern ---');
  final singletonClient = SingletonClient();
  singletonClient.testDatabase();
  print('');

  // Phase 4: SOLID Principles
  // print('--- Phase 4: SOLID Principles ---');
  final solidClient = SolidClient();
  solidClient.makePayments();
  print('');

  print('=== All Demonstrations Complete ===');
}
